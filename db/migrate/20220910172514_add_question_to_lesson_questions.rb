class AddQuestionToLessonQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :lesson_questions, :question, :string
  end
end
