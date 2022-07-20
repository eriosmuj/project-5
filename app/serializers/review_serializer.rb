class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating
  has_one :user
  has_one :airline
end
