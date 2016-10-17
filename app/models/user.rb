class User < ActiveRecord::Base
	has_many :lendings
	has_many :rfid_tags, :through => :lendings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
