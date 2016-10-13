class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|

      t.integer :price
      t.string :name
      t.string :permalink

      t.timestamps
    end
  end
end
