class CategoriesController < ApplicationController
    def index
        @categories=Category.all
    end
    def create
        @category= Category.new categories_params
        
        if @category.save
            
            redirect_to category_path(@category)
        else
            render :new
        end
    end
    def show
        @category=Category.find params[:id]
    end
    def edit
        @category=Category.find params[:id]
        
    end
    def update
        @category=Category.find params[:id]
        if(@category.update categories_params)
            redirect_to action :show
        else
            render :edit
        end
    end
    def destroy
        @category=Category.find params[:id]
        @category.delete
        redirect_to action: :index
    end
    def categories_params
        params.require(:category).permit(:title, :type)
    end
end
