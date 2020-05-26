class User < ApplicationRecord
  has_many :likes
  has_many :beers, through: :likes 
  has_many :comments
  has_many :beers, through: :comments
end
