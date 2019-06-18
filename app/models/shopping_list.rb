class ShoppingList < ActiveRecord::Base
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items, reject_if: ->(item) { item[:description].blank? }, allow_destroy: true
end
