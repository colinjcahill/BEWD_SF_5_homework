class AddItemRefToCategory < ActiveRecord::Migration
  def change
    add_reference :categories, :item, index: true
  end
end
