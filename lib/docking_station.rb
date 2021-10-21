require_relative 'bike'

class Dockingstation
    attr_reader :capacity
    DEFAULT_CAPACITY = 20
    def initialize(capacity = DEFAULT_CAPACITY)
      @capacity = capacity
      @bike_storage = []
    end

    def release_bike
      empty?
      @bike_storage.pop
    end
    
    def dock(bike, working = true)
      full?
      bike.works = working
      @bike_storage << bike
    end

    private

    attr_reader :bike_storage

    def full?
      raise 'capacity is full' if @bike_storage.length >= capacity
    end
    
    def empty?
      raise 'no bikes available' unless !@bike_storage.empty?
    end

end