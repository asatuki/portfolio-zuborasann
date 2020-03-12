class RemoveRecipesIdFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :recipes_id, :integer
  end
end
