class Tag < ApplicationRecord
  has_many :taggings
  has_many :games, through: :taggings
end
