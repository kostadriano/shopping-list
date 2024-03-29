class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.integer :quantity, default: 0
      t.references :shopping_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
