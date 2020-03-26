class AddColumsToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :count, :integer, :default => 0
  end
end
