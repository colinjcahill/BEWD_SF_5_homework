class AddCategoryToClassifieds < ActiveRecord::Migration
  def change
    add_reference :classifieds, :category, index: true
  end
end
