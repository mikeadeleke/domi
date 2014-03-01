class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :place, index: true

      t.timestamps
    end
  end
end
