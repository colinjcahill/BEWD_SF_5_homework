class AddOwnerApprovedToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :owner_approved, :boolean
  end
end
