class CreateCareTakers < ActiveRecord::Migration
  def change
    create_table :care_takers do |t|
      t.string :name
      t.integer :age
      t.string :job

      t.timestamps null: false
    end
  end
end
