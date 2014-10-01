class AddUserToItems < ActiveRecord::Migration
  def change
    add_column :items, :user, :reference
  end
end
