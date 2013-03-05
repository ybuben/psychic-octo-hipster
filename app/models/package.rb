class Package < ActiveRecord::Base
  attr_accessible :breadth, :deliverer_id, :deliveryAddress, :description, :height, :length, :maxDate, :maxtTime, :receiverName, :receiverPhone, :shipper_id, :weight
  end
  
  

