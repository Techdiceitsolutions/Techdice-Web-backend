class Service < ApplicationRecord
  has_many :user_service

  validates :name, presence: true, length: { minimum: 2 }

  validates :description, presence: true

  validates :icon, presence: true

  validates :duration, presence: true, numericality: true

  validates :vacancy, presence: true, numericality: true
end
