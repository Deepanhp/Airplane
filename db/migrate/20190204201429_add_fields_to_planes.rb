class AddFieldsToPlanes < ActiveRecord::Migration[5.0]
  def change
  	remove_column :planes, :rows
  	remove_column :planes, :row_seats
  	add_column :planes, :fc_rows, :integer, default: 0, null: false
  	add_column :planes, :fc_row_seats, :integer, default: 0, null: false
  	add_column :planes, :bc_rows, :integer, default: 0, null: false
  	add_column :planes, :bc_row_seats, :integer, default: 0, null: false
  	add_column :planes, :ec_rows, :integer, default: 0, null: false
  	add_column :planes, :ec_row_seats, :integer, default: 0, null: false
  end
end
