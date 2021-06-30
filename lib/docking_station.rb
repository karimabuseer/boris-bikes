require_relative 'bike'

class DockingStation
    def release_bike
        fail "Bike doesn't exist" if @bike == nil
        Bike.new
    end
    
    attr_reader :bike

    def dock(bike)
        @bike = bike
    end
end

