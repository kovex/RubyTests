class CreateCarPlates < ActiveRecord::Migration
  def change
    create_table :car_plates do |t|
      t.string :country
      t.boolean :validated
      t.string :car_ident_num

      t.timestamps
    end
  end
end
