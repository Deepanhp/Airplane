class CreateUserSeats < ActiveRecord::Migration[5.0]
  def change
    create_table :user_seats do |t|
    	t.integer :user_id
      t.integer :seat_id
      t.timestamps
    end
  end
end
