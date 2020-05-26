class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :location
  has_many :comments
  has_many :beers, through: :comments
end
