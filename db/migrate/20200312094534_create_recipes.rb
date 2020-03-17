class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.text :ingredient
      t.string :title
      t.text :process


      t.timestamps
    end
  end
end
