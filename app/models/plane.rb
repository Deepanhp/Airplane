class Plane < ApplicationRecord
	has_many :seats, dependent: :destroy

	after_create :create_seats, on: :create

	def create_seats
		fc_seats = (self.fc_rows) * (self.fc_row_seats)
		bc_seats = (self.bc_rows) * (self.bc_row_seats)
		ec_seats = (self.ec_rows) * (self.ec_row_seats)
		(1..(fc_seats)).each do 
			self.seats.create(type: "first_class")		
		end
		(1..(bc_seats)).each do 
			self.seats.create(type: "business_class")		
		end
		(1..(ec_seats)).each do 
			self.seats.create(type: "economy_class")		
		end
	end
end
