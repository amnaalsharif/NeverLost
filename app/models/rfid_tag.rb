class RfidTag < ActiveRecord::Base
	has_many :detections
	has_many :sensors, :through => :lendings
	has_many :users, :through => :lendings
end
