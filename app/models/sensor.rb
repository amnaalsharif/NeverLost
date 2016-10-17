class Sensor < ActiveRecord::Base
	has_many :detections
end
