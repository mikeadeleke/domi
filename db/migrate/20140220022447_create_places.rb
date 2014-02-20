class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :address
      t.string :description
      t.decimal :eta
      t.integer :rent_per_month
      t.integer :bedrooms
      t.date :available
      t.text :additional
      t.belongs_to :user, index: true
      
      t.timestamps
    end
  end
end
