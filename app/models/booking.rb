class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :character
  has_one :review, dependent: :destroy

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
