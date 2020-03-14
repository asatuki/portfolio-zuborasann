class RemoveCookVideoFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :cook_video, :string
  end
end
