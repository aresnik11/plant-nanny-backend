class UserSerializer < ActiveModel::Serializer
  # only sends back these attributes, includes plant and note objects
  attributes :id, :name
  has_many :plants
  has_many :notes
end
