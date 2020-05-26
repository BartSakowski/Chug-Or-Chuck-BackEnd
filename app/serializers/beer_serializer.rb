class BeerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :location, :brand, :image, :uploader_comment, :chugs, :chucks, :comments
  has_many :comments
  has_many :users, through: :comments
end
