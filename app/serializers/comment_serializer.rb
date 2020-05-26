class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :text, :user #:beer
  # belongs_to :user
  # belongs_to :beer
end
