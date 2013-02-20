class Deliverer < ActiveRecord::Base
  attr_accessible :address, :creditcard, :email, :name, :pwdHash, :rating, :refID
end
