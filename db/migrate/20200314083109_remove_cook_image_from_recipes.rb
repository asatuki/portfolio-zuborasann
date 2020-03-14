class RemoveCookImageFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :cook_image, :string
  end
end
