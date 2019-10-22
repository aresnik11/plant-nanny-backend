class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :plants
  has_many :notes
end
