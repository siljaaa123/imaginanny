class Character < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :category, presence: true, inclusion: { in: %w[Villains Disney Pixar Marvel DC Action Books Family] }
  validates :character_name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
