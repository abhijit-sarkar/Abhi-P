class DropPols < ActiveRecord::Migration[5.0]
  def change
	drop_table :pols
  end
end
