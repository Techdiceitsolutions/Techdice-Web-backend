class UserService < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :career_goals, :unique_qualities, :exciting_project, presence: true, length: { minimum: 2}
  validates :position, presence: true
  validates :resume, presence: true

  private

  def toggle_acceptance
    self.is_accepted = !self.is_accepted
  end
end
