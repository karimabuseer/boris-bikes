require "docking_station"
require "bike"



describe DockingStation do

    # it 'releases working bikes' do
    #     bike = subject(bike).release_bike
    #     expect(bike).to respond_to(:working?)
    # end
    
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
    end
    
    it 'raises error when empty' do
        expect { subject.release_bike }.to raise_error ("Bike doesn't exist")
    end
 
end



