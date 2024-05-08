class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :institute
      t.string :course
      t.string :domain
      t.string :goals
      t.string :unique_skill
      t.string :company_project
      t.string :resume

      t.timestamps
    end
  end
end
