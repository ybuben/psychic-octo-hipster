class Shipper < ActiveRecord::Base
  attr_accessible :address, :creditcard, :email, :name, :pwdHash

end

