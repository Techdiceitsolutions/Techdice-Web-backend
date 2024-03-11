class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :user_service

  validates :first_name, presence: true
  validates :first_name, length: { minimum: 2 }

  validates :last_name, presence: true
  validates :last_name, length: { minimum: 2 }

  def jwt_payload
    super
  end

  private

  def toggle_enrollment
    self.is_enrolled = !self.is_enrolled
  end

end
