class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructor, :description
  has_many :lessons
end
