class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :size
      t.string :region

      t.timestamps
    end
  end
end
