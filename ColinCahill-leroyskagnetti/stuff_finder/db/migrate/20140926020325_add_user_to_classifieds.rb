class AddUserToClassifieds < ActiveRecord::Migration
  def change
    add_reference :classifieds, :user, index: true
  end
end
