class Category < ApplicationRecord
    has_many :ads, dependent: :destroy
 

end
