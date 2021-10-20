require 'bike'
describe Bike do
    it "checks if bike is working" do
        bike_work = Bike.new
        expect(bike_work).to respond_to :working?
  end
end