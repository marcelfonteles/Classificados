class RemoveTypeFromView < ActiveRecord::Migration[5.2]
  def change
    remove_column :views, :type_view, :string
  end
end
