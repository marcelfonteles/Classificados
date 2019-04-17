class RemovePriceFromAd < ActiveRecord::Migration[5.2]
  def change
    remove_column :ads, :price, :string
  end
end
