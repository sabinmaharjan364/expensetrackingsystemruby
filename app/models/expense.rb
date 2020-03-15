class Expense < ApplicationRecord
    belongs_to :category
    has_and_belongs_to_many :users
    accepts_nested_attributes_for :category
    accepts_nested_attributes_for :users, reject_if: :all_blank, allow_destroy: true
end
