class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :character
  has_one :review

  validates :date, presence: true
end
