class RemoveTypeFromViews < ActiveRecord::Migration[5.2]
  def change
    remove_column :views, :type, :string
  end
end
