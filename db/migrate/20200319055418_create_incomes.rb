class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.string :title
      t.string :description
      t.references :categories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
