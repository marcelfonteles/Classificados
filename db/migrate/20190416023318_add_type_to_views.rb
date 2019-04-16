class AddTypeToViews < ActiveRecord::Migration[5.2]
  def change
    add_column :views, :type_view, :string, limit: 1
  end
end
