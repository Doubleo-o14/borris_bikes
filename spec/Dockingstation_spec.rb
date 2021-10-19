require 'docking_station'
describe Dockingstation do
    it "can take out bike" do
        docking_station = Dockingstation.new
        expect(docking_station).to respond_to :release_bike
  end
end
        