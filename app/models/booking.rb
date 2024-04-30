class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :character

  validates :date, presence: true
end
