require_relative 'bike'

class Dockingstation
    attr_reader :bike
    def release_bike
      Bike.new
    end
    
    def dock(bike)
      @bike = bike
    end
end