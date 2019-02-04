class AddRowsAndRowSeatsToPlanes < ActiveRecord::Migration[5.0]
  def change
    add_column :planes, :rows, :integer
    add_column :planes, :row_seats, :integer
  end
end
