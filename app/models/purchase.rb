class Purchase < ApplicationRecord
  belongs_to :member
  belongs_to :ad
end
