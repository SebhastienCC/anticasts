class AddCourseToQuiz < ActiveRecord::Migration[5.0]
  def change
    add_column :quizzes, :course_id, :integer
    add_column :quizzes, :section_id, :integer
  end
end
