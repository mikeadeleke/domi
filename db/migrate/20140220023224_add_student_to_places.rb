class AddStudentToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :student, :string
  end
end
