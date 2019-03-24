class Category < ApplicationRecord
    validates :descriptio, uniquiness: true
end
