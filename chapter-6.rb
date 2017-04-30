# practicing classical inheritance

class Bycicle
	attr_reader :size, :chain, :tire_size

	def initialize(args = {})
		@size 		 = args[:size]
		@chain		 = args[:chain] 		|| default_chain
		@tire_size = args[:tire_size] || default_tire_size
	end

	def default_tire_size
		raise NotImplementedError,
			"This #{Self.class} cannot respond to:"
	end

	def default_chain
		"10-speed"
	end
end

class MountainBike
	def initialize(args)
		@size 		 = args[:size] 
		@chain 		 = args[:chain]
		@tire_size = args[:tire_size] || default_tire_size
	end

	def default_tire_size
		"2.1"
	end
end

class RoadBike
	def initialize(args)
		@size 		 = args[:size]
		@chain		 = args[:chain]
		@tire_size = args[:tire_size] || default_tire_size
	end

	def default_tire_size
		"23"
	end
end

class RecumbentBike
	def initialize(args)
		@size 		 = args[:size]
		@chain 		 = args[:chain]     || default_chain
		@tire_size = args[:tire_size] || default_tire_size
	end

	def default_tire_size
		"23"
	end

	def default_chain
		"9-speed"
	end
end