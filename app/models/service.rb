class Service < ApplicationRecord
  has_one_attached :icon
  validates :name, presence: true, length: { minimum: 2 }

  validates :description, presence: true

  validates :duration, presence: true, numericality: true

  validates :vacancy, presence: true, numericality: true

  def image_url
    Rails.application.routes.url_helpers.url_for(icon) if icon.attached?
  end
end
