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
    it "can dock the bikes" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
  end 
    
    it "shows the bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
end
        