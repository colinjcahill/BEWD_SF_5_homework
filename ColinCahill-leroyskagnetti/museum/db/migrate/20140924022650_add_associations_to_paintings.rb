class AddAssociationsToPaintings < ActiveRecord::Migration
  def change
    change_table :paintings do |t|
      t.belongs_to :artist
      t.belongs_to :art_museum
    end
  end
end