

class Api::V1::SeatsController < ApplicationController

	def update
		binding.pry
	end

	def permitted_attributes
		[:pnr,:user_id]
	end

	def test
	end

	def index
		seat = Seat.where(pnr: params[:pnr])
		if seat
			@plane = Plane.where(id:seat.first.plane_id)
			@seats = @plane.first.seats.order(:s_id)
		else
			binding.pry
		end
	end

	def book
		Seat.where(pnr: params[:pnr]).first.update(s_id: params[:s_id])
	end

	def resource_params
   		params.permit(permitted_attributes)
   end
end
