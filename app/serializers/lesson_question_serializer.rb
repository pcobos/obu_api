class LessonQuestionSerializer < ActiveModel::Serializer
  attributes :id, :order, :question
  has_one :lesson
end
