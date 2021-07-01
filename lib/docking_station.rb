require_relative 'bike'

class DockingStation
    DEFINE_CONSTANT = 20
    def initialize
        @bikes = [] 
    end
    attr_reader :bikes

    def release_bike
        empty? ? (raise "No bikes") : (@bikes.pop)
    end

    def dock(bike)
        full? ? (raise "Capacity full") : @bikes << bike
    end

    private

    def full?
        @bikes.length >= DEFINE_CONSTANT
    end

    def empty?
        @bikes.empty? 
    end
end

