class ChangeNameToCategoryName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :categories, :name, :category
  end
end
