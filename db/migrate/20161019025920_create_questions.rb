class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :course_id
      t.integer :quiz_id
      t.text :question
      t.text :answers

      t.timestamps
    end
  end
end
