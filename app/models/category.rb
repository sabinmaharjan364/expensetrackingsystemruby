class Category < ApplicationRecord
    has_many :expenses
    
    has_many :incomes
   
    scope :income_categories, ->{where type: 'Income'}
    scope :expense_categories, ->{where type: 'Expense'}
    validates :title, :type, presence: true
end


