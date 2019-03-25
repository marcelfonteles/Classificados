class Ad < ApplicationRecord
  belongs_to :category #, foreign_key 'category_id', primary_key 'id'
  belongs_to :member #, foreign_key 'member_id', primary_key 'id'
end
