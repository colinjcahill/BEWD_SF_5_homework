class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :value
      t.string :image_path
      t.string :tags
      t.integer :deterioration

      t.timestamps
    end
  end
end
