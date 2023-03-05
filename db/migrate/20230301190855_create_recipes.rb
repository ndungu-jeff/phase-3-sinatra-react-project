class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.string :video
      t.string :description
      t.string :category
      t.integer :minutes
      t.integer :rating
      t.integer :user_id
      t.timestamps
    end
  end
end
