class FrontShipperController < ApplicationController
def index
	@shipper = Shipper.all
	@package = Package.all
end
end
