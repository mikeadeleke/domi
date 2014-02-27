class AddHiddenToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :credit_score, :integer
    add_column :places, :grade, :string
    add_column :places, :max_amount_per_month, :integer
  end
end
