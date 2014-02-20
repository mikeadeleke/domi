class AddStudentToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :student, :boolean
  end
end
