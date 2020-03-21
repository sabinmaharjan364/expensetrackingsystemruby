class ExpenseCategory < Category
    has_many :expenses
    validates :title, presence: true
end
