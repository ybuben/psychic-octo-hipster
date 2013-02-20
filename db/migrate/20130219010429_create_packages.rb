class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.text :description
      t.integer :weight
      t.integer :length
      t.integer :breadth
      t.integer :height
      t.date :maxDate
      t.time :maxtTime
      t.string :receiverName
      t.string :receiverPhone
      t.string :deliveryAddress
      t.integer :shipper_id
      t.integer :deliverer_id

      t.timestamps
    end
  end
end
