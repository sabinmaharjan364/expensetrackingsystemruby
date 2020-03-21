class Income < ApplicationRecord
    belongs_to :income_category
    validates :title, :description, presence: true
end
