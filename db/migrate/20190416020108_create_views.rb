class CreateViews < ActiveRecord::Migration[5.2]
  def change
    create_table :views do |t|
      t.references :member, foreign_key: true
      t.references :ad, foreign_key: true
      t.string :type, limit: 1

      t.timestamps
    end
  end
end
