class RenameUIdInSeats < ActiveRecord::Migration[5.0]
  def change
  	rename_column :seats, :u_id, :user_id
  end
end
