class RemoveUserIdFromSeats < ActiveRecord::Migration[5.0]
  def change
  	remove_column :seats, :user_id
  end
end
