class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :recipes_id
      t.text :comment

      t.timestamps
    end
  end
end
