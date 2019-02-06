class AddUserIdToSeats < ActiveRecord::Migration[5.0]
  def change
    add_column :seats, :u_id, :integer
  end
end
