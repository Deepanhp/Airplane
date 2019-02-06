class Api::V1::SeatsController < ApplicationController

	def update
		binding.pry
	end

	def permitted_attributes
		[:pnr,:user_id]
	end

	def test
	end

	def resource_params
   		params.permit(permitted_attributes)
   end
end
