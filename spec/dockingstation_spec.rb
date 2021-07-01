require "docking_station"
require "bike"

describe DockingStation do

    it 'releases working bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject).to respond_to(:release_bike)
    end
    
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bikes).to eq [bike]
    end
    
    it 'raises error when empty' do
        expect { subject.release_bike }.to raise_exception("No bikes")
    end

    describe '#dock' do
        it 'Should not let us dock bike when one is docked' do
            DockingStation::DEFINE_CONSTANT.times { b = Bike.new ; subject.dock(b)}
            expect {subject.dock(Bike.new)}.to raise_error("Capacity full")
        end
    end
end

