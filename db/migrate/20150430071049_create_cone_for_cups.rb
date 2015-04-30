class CreateConeForCups < ActiveRecord::Migration
  def change
    create_table :cone_for_cups do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
