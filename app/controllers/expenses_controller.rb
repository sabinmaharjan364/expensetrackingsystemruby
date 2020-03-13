class ExpensesController < ApplicationController
    def new

    end   
    def create
        @expense=Expense.new expense_params
        @expense.save

    end    
    private
    def expense_params
        params.require(:expense).permit(:title,:category_id)
    end

end
