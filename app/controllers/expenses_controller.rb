class ExpensesController < ApplicationController
    def new
        @expense=Expense.new
    end   
    def create
        @expense=Expense.new expense_params
        # a=params[:expense][:title] 
        # puts a
        @expense.save

    end    
    private
    def expense_params
        params.require(:expense).permit(:title, category_attributes: [:title], user_ids: [])
    end

end
