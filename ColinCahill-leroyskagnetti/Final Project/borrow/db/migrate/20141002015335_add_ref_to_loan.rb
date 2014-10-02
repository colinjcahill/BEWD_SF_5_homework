class AddRefToLoan < ActiveRecord::Migration
  def change
    add_reference :loans, :borrower, index: true
    add_reference :loans, :lender, index: true
    add_reference :loans, :item, index: true
  end
end
