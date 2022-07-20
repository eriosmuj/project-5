class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :user
  has_one :airline
end
