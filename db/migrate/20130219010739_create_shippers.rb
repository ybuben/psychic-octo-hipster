class CreateShippers < ActiveRecord::Migration
  def change
    create_table :shippers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :pwdHash
      t.integer :creditcard

      t.timestamps
    end
  end
end
