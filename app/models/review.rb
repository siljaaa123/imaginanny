class Review < ApplicationRecord
  belongs_to :booking
  has_one :character, through: :booking

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
end
