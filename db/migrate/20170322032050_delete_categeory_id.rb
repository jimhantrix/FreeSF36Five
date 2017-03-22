class DeleteCategeoryId < ActiveRecord::Migration[5.0]
  def change
  	remove_column :posts, :category_id, :string
  end
end
