class CreatePostMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_messages do |t|
      t.text :message
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
