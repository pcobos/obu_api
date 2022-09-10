class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :video_link
  has_many :lesson_questions
end
