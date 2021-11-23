class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef
  has_many :reviews

  validates :start_time, presence: true
  validates :end_time, presence: true
end
