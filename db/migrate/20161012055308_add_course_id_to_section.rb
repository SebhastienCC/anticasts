class AddCourseIdToSection < ActiveRecord::Migration[5.0]
  def change
    add_column :sections, :course_id, :integer
    add_column :sections, :order, :integer
  end
end
