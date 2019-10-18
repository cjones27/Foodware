class CreateFoodplaces < ActiveRecord::Migration[5.2]
  def change
    create_table :foodplaces do |t|
      t.string :name
      t.string :email
      t.string :address
      t.float :score
      t.string :phone

      t.timestamps
    end
  end
end
