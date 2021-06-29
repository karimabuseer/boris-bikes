require "docking_station"
describe DockingStation do
    it { expect(DockingStation).to respond_to(:release_bike) }
end