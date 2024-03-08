class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.binary :icon
      t.integer :duration
      t.integer :vacancy

      t.timestamps
    end
  end
end
