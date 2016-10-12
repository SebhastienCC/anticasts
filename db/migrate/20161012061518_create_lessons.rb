class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.string :video_link
      t.integer :section_id
      t.integer :course_id

      t.timestamps
    end
  end
end
