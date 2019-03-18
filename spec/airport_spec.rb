require "airport"
require "weather"

describe '#weather' do
    	context 'necesario conocer si esta tormentoso' do
    		it 'recibir una respuesta' do
    			weather = Weather.new
    			expect(weather.stormy?).to eq true
    		end
    	end
    end

    describe Airport do
	# Primera historia de usuario.
	context 'Status to know if is possible to land at the airport' do
		it 'Permission to land at the airport' do
			airport = Airport.new
			expect(airport.land).to eq true
		end
	end

	describe '#instruct' do
		#Segunda historia de usuario
		context 'Givin Permission to take off from airport'do
		    it 'confirmar el despegue y que ya no este en el aeropuerto el avion'do
		    	weather = Weather.new
		        airport = Airport.new(weather)
		        expect {airport.despegar}.to raise_error('you can not take off the aircraft because of the storm') 
		    end
		end	 
    end

    describe '#calcel_aircraft' do
    	#cuarta historia de usuario.
    	context 'cambiar el desegue por el clima tormentoso' do
    		it 'calcel the land status  of the aircraft' do
    			safety = Weather.new
    			safety.stormy?
    			expect{safety.land}.to raise_error('you can not take off the aircraft because of the storm')
    		end
    	end
    end

    describe 'change' do
    	#Tercera
    	context 'cambiar el estado del vuelo por el clima' do
    		it 'calcel the take off  status of the aircraft' do
    			safety = Weather.new
    			safety.stormy?
    			expect{safety.despegar}.to raise_error('you can not take oof the aircraft because of the storm')
    		end
    	end
    end
end

