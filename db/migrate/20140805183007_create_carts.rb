class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :name
      t.integer :user_id
      t.string :status, default: 'active'
      t.timestamps null: false
    end
  end
end
