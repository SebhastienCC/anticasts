class AddSubIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :subscription_plan_id, :integer
    add_column :users, :subscription_plan, :integer
  end
end
