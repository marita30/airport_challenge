require_relative 'weather'
class Airport
	# weather = Weather.new
	# weather.stormy? // true
	def initialize(weather = Weather.new)
		@weather = weather

	end
   def land
   	#Primer historia de usuario.
	 fail 'You can not land the aircraft because of the storm' if @weather.stormy? == "Stormy"
	 @land = true
	end	

	def despegar
	#Segunda historia de usuario.
	 fail 'you can not take off the aircraft because of the storm' if @weather.stormy? == "Stormy"
		@despegar = true	
	end
end  
