class Airport

	def initialize(options = {})
		@airport_plane_capacity = options.fetch(:capacity || DEFAULT_CAPACITY)
		@ground_planes = []||[1]
	end	

	def plane_count
		@ground_planes.count
	end

	def land(plane)
		#if airport capacity is reached, raise an exception.
		raise "Sorry the airport is full" if full?
		@ground_planes << plane
	end

	def take_off(plane)
		@ground_planes
	end

	def full?
		plane_count == @airport_plane_capacity
	end


#weather module part to be added here.


	


end