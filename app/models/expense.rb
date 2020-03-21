class Expense < ApplicationRecord
    belongs_to :expense_category
    has_and_belongs_to_many :users
    accepts_nested_attributes_for :expense_category
    accepts_nested_attributes_for :users, reject_if: :all_blank, allow_destroy: true
end
