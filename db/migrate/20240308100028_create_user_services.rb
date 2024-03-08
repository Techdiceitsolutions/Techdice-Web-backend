class CreateUserServices < ActiveRecord::Migration[7.0]
  def change
    create_table :user_services do |t|
      t.text :career_goals
      t.text :unique_qualities
      t.string :position
      t.binary :resume
      t.text :exciting_project
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
