class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :items, :deterioration, :condition
	end
end
