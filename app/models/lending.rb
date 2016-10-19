class Lending < ActiveRecord::Base
	belongs_to :rfid_tag
	belongs_to :user
end


