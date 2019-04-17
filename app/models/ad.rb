class Ad < ApplicationRecord
  belongs_to :category #, foreign_key 'category_id', primary_key 'id'
  belongs_to :member #, foreign_key 'member_id', primary_key 'id'
  
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category_id, presence: true
  validates :member_id, presence: true
  
  
  has_many :views, dependent: :destroy
end
