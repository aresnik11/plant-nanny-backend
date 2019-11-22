class NoteSerializer < ActiveModel::Serializer
  # only sends back these attributes
  attributes :id, :content, :created_at, :plant
end
