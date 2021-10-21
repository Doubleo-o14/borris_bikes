require_relative 'bike'

class Dockingstation
    attr_reader :bike_storage
    DEFAULT_CAPACITY = 20
    def initialize
      @bike_storage = []
    end

    def release_bike
      empty?
      @bike_storage[0]
    end
    
    def dock(bike)
      full?
      @bike_storage << bike
    end

    private

    def full?
      raise 'capacity is full' if @bike_storage.length >= DEFAULT_CAPACITY
    end
    
    def empty?
      raise 'no bikes available' unless !@bike_storage.empty?
    end

end