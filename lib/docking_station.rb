require_relative 'bike'

class DockingStation    
    def initialize(capacity = 20)
        @capacity = capacity
        @bikes = []
    end
    attr_reader :bikes 
    attr_reader :capacity

    def release_bike
        @bikes.empty? ? (raise "No bikes") : (@bikes.pop)
    end

    def dock(bike)
        @bikes.length >= 20 ? (raise "Capacity full") : @bikes << bike
    end
end

