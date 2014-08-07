class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :name
    	t.integer :user_id
    	t.integer :duck_id
    	t.integer :photo_id
    	t.string :location
    	t.string :blog
    	t.string :instagram
    	t.string :email
    	t.timestamps
    end
  end
end
