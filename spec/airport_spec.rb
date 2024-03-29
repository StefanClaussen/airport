require 'airport'
require 'plane'

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land
describe Airport do
  let(:airport) { Airport.new(:capacity => 50) }
  let(:plane) {Plane.new}

  def fill_airport(airport)
    50.times { airport.land(Plane.new) }
  end

  
  context 'taking off and landing' do
    it "plane can land" do
      expect(airport.plane_count).to eq(0)
      airport.land(plane)
      expect(airport.plane_count).to eq(1)
    end
    
    it 'a plane can take off' do
      #expect(airport.plane_count).to eq(1)
      airport.take_off(plane)
      expect(airport.plane_count).to eq(0)
    end
  end
  
  context 'traffic control' do
    it 'should know if the airport is full' do
      expect(airport).not_to be_full
      fill_airport airport
      expect(airport).to be_full
    end

    it 'a plane cannot land if the airport is full' do
      fill_airport airport
      expect(lambda {airport.land(plane) }).to raise_error
      (RuntimeError)
    end
    
    # Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport
    
    #Test to still do
    #context 'weather conditions' do
      #it 'a plane cannot take off when there is a storm brewing' do
      #end
      
      #it 'a plane cannot land in the middle of a storm' do
      #end
    #end
  end
end


# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"
describe Plane do

  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
   
  end
  
  it 'has a flying status when in the air' do
    
  end
  
  it 'can take off' do
  end
  
  it 'changes its status to flying after taking of' do
  end
end

# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
describe "The gand finale (last spec)" do
  it 'all planes can land and all planes can take off' do
  end
end
