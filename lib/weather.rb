class Weather

	def stormy?
		rand_num_generator == 1 ? 'Stormy' : 'Sunshine'
	end

	private 

	def rand_num_generator
		rand(1..4)
	end
end

