class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.datetime :loan_begin
      t.datetime :loan_end
      t.integer :borrower_score
      t.integer :lender_score

      t.timestamps
    end
  end
end
