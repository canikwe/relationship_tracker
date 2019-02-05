class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :care_taker_id
      t.integer :kid_id
      t.string :status

      t.timestamps null: false
    end
  end
end
