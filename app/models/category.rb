class Category < ApplicationRecord
  has_many :bookmarks, dependant: :destroy
  has_many :recipes, through: :bookmarks
end
