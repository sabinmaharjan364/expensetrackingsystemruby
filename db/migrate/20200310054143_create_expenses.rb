class CreateExpenses < Category
  def change
    create_table :expenses do |t|
  
        t.string :title
        t.text :description
        t.belongs_to :category
        t.timestamps
    end
  end
end
