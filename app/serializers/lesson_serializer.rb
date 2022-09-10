class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :video_link
end
