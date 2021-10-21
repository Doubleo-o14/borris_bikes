require 'docking_station'
describe Dockingstation do
    it "can take out bike" do
        expect(subject).to respond_to :release_bike
    end

    it "does not take out bikes when there are no bikes" do
      expect { subject.release_bike }.to raise_error 'no bikes available'
    end

    it "does does not dock a bike when capacity is full" do
      Dockingstation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      expect { subject.dock(Bike.new) }.to raise_error 'capacity is full'
    end
      

    it "can tell us if bike is working" do
      docking_station = Dockingstation.new
      docking_station.dock(Bike.new)
      bike = docking_station.release_bike
      expect(bike).to be_working
  end
    it "can dock the bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
  end
  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = Dockingstation.new(50)
      50.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new }.to raise_error 'capacity is full'
    end
  end
    it "has deafult capacity in docking station" do
      expect(subject.capacity).to eq Dockingstation::DEFAULT_CAPACITY
    end
  end
        