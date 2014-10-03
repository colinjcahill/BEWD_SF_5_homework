class AddRefToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :loan, index: true
    add_reference :reviews, :user, index: true
    add_reference :reviews, :author, index: true
  end
end
