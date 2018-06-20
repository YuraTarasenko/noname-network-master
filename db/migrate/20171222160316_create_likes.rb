class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.boolean :liked
      t.integer :user_id
      t.integer :wall_post_id

      t.timestamps
    end
  end
end
