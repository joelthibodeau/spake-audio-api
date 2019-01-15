class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sessions
end
