require "airport"
describe Status do
	# Primera historia de usuario.
	context 'Status to know if is possible to land at the airport' do
		it 'Permission to land at the airport' do
			status = Status.new
			expect(status.land).to eq true
		end
	end

	describe '#instruct' do
		#Segunda hiatoria de usuario
		context 'Givin Permission to take off from airport'do
		    it 'confirmar el despegue y que ya no este en el aeropuerto el avion'do
		        status = Status.new
		        expect(status.despegar).to eq true 
		    end
		end	 
    end
end