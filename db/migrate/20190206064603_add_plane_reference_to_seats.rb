class AddPlaneReferenceToSeats < ActiveRecord::Migration[5.0]
  def change
  	remove_column :seats, :plane_id
  	remove_column :seats, :user_id
  	add_reference :seats, :plane, foreign_key: true
  	add_column :seats, :user_id, :integer

  end
end
