class AddIsAcceptedToUserService < ActiveRecord::Migration[7.0]
  def change
    add_column :user_services, :is_accepted, :boolean, default: false
  end
end
