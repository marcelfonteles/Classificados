class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.references :category, foreign_key: true
      t.references :member, foreign_key: true
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
