class AddOrderToLesson < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :order, :integer
  end
end
