class Item < ActiveRecord::Base
  belongs_to :shopping_list

  validates_presence_of :description
end
