class CreateIceCreams < ActiveRecord::Migration
  def change
    create_table :ice_creams do |t|
      t.integer :cone_for_cup_id
      t.integer :flavor_id
      t.integer :extras_id
      t.integer :total_number
      t.integer :user_id

      t.timestamps
    end
  end
end
