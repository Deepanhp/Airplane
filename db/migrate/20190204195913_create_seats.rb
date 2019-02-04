class CreateSeats < ActiveRecord::Migration[5.0]
  def change
    create_table :seats do |t|
      t.references :plane, foreign_key: true
      t.references :user, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
