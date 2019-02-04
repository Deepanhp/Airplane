class Seat < ApplicationRecord
  belongs_to :plane
  belongs_to :user
end
