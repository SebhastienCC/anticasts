class CreateSeats < ActiveRecord::Migration[5.0]
  def change
    create_table :seats do |t|
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end
