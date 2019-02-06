class Seat < ApplicationRecord
  # belongs_to :user

  after_create :create_pnr, on: :create

  def create_pnr
  	self.pnr = "PNR"+ id.to_s.rjust(5, "0") if pnr.blank?
  end
end
