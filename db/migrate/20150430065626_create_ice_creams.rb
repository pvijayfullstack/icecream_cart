class CreateIceCreams < ActiveRecord::Migration
  def change
    create_table :ice_creams do |t|

      t.integer :cone_for_cup_id
      t.integer :flavor_id
      t.string  :extra_ids
      t.integer :total_number
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
