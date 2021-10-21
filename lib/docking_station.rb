require_relative 'bike'

class Dockingstation
    attr_reader :bike
    def release_bike
      raise 'no bikes available' unless @bike
      @bike
    end
    
    def dock(bike)
      raise 'capacity is full' if @bike
      @bike = bike
    end
end