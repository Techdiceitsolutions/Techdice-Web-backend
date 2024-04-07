class Application < ApplicationRecord
  has_one_attached :resume
  validates :name, presence: true, length: { minimum: 2 }

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :phone, presence: true, length: { minimum: 10 }

  def resume_url
    Rails.application.routes.url_helpers.url_for(resume) if resume.attached?
  end
end
