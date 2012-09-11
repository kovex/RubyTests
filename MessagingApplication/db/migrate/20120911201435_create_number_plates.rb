class CreateNumberPlates < ActiveRecord::Migration
  def change
    create_table :number_plates do |t|
      t.string :country
      t.boolean :authenified
      t.string :id

      t.timestamps
    end
  end
end
