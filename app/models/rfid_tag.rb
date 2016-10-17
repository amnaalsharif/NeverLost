class RfidTag < ActiveRecord::Base
	has_many :detections
	has_many :sensors, :through => :lendings
end
