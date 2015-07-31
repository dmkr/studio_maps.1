class CreateStudioPoints < ActiveRecord::Migration
  def change
    create_table :studio_points do |t|
      t.string :lat
      t.string :lon
      t.string :studio_id
      t.string :street
      t.string :city
      t.string :zip
      t.string :state

      t.timestamps
    end
  end
end
