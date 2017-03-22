class AddCategoryIdToPost < ActiveRecord::Migration[5.0]


  def change
  	rename_column :posts, :category, :category_id
  end


end
