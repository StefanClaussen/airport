class Plane

	def initialize
		@airborne = true
	end

	def airborne?
		@airborne
	end

	def fly
		@airborne = true
	end

	def permission_to_fly?
		true
	end

	def land_plane
		@airborne = false
	end	


end