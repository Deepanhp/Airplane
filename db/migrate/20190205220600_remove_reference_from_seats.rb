class RemoveReferenceFromSeats < ActiveRecord::Migration[5.0]
  def change
  	remove_column :seats, :plane_id
  	add_column :seats, :plane_id, :integer
  end
end
