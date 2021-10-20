require 'docking_station'
describe Dockingstation do
    it "can take out bike" do
        docking_station = Dockingstation.new
        expect(docking_station).to respond_to :release_bike
    end

    it "can tell us if bike is working" do
      docking_station = Dockingstation.new
      bike  = docking_station.release_bike
      expect(bike).to be_working
  end
end
        