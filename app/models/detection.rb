class Detection < ActiveRecord::Base
	belongs_to :sensor, :rfid_tag
end
