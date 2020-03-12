class AddRecipeIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :recipe_id, :integer
  end
end
