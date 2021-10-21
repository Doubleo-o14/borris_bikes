require_relative 'bike'

class Dockingstation
    attr_reader :bike_storage
    def initialize
      @bike_storage = []
    end

    def release_bike
      raise 'no bikes available' unless !@bike_storage.empty?
      @bike_storage[0]
    end
    
    def dock(bike)
      raise 'capacity is full' if @bike_storage.length >= 20
      @bike_storage << bike
    end
end