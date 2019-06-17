class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|
      t.string :name
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
