class AddPnrToSeats < ActiveRecord::Migration[5.0]
  def change
    add_column :seats, :pnr, :string
  end
end
