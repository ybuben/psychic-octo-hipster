class CreateDeliverers < ActiveRecord::Migration
  def change
    create_table :deliverers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :pwdHash
      t.integer :refID
      t.integer :creditcard
      t.float :rating

      t.timestamps
    end
  end
end
