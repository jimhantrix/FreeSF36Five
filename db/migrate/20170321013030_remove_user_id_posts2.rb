class RemoveUserIdPosts2 < ActiveRecord::Migration[5.0]
  def change
  	remove_column :posts, :user_id, :string
  end
end
