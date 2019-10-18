class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.integer :quantity
      t.float :score
      t.references :user, foreign_key: true
      t.references :foodplace, foreign_key: true

      t.timestamps
    end
  end
end
