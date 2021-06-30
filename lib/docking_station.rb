require_relative 'bike'

class DockingStation
    def release_bike
        fail "Bike doesn't exist" if @bike == nil
        @bike
    end
    
    attr_reader :bike

    def dock(bike)
        @bike = bike
    end
end

