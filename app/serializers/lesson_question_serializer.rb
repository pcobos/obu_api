class LessonQuestionSerializer < ActiveModel::Serializer
  attributes :id, :order
  has_one :lesson
end
