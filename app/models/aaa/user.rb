class User < ActiveRecord::Base
	has_many :appearances
	has_many :information_fragments

end
