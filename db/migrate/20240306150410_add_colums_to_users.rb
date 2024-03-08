class AddColumsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :date_of_birth, :date
    add_column :users, :country, :string
    add_column :users, :phone, :string
    add_column :users, :image, :string
    add_column :users, :is_enrolled, :boolean, default: false
    add_column :users, :institute, :string
  end
end
