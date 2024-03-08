class AddColumsToAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :first_name, :string, null: false
    add_column :admins, :last_name, :string, null: false
    add_column :admins, :country, :string
    add_column :admins, :image, :binary
  end
end
