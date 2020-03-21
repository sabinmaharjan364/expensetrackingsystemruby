class IncomeCategory < Category
    has_many :incomes
    validates :title, presence: true
end
