class Piece < ActiveRecord::Base
	#attr_accessor 	:title, :instrumentation, :notes, 
	#				:duration, :last_performed, :published

	validates :title, presence: true, uniqueness: { case_sensitive: false }
	
end
