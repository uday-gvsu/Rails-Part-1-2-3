class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :area
      t.integer :population
      t.string :continent

      t.timestamps
    end
  end
end
