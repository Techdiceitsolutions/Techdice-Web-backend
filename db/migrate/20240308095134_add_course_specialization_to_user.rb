class AddCourseSpecializationToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :course_specialization, :string
  end
end
