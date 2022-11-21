class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :category
      t.integer :amount

      t.timestamps
    end
  end
end
