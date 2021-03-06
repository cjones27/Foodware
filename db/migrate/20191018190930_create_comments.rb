class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.float :score
      t.references :user, foreign_key: true
      t.references :foodplace, foreign_key: true

      t.timestamps
    end
  end
end
