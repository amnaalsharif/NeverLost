class Lending < ActiveRecord::Base
	belongs_to :rfid_tag, :user
end
