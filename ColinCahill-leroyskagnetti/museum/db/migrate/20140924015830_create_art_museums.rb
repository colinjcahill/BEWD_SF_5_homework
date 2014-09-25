class CreateArtMuseums < ActiveRecord::Migration
  def change
    create_table :art_museums do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
