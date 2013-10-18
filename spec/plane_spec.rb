require 'plane'

describe Plane do
let(:plane) { Plane.new }

# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"
  
  it 'has a flying status when created' do
    expect(plane.airborne?).to be_true
  end
  
  it 'has a flying status when in the air' do
    plane.fly
    expect(plane.airborne?).to be_true
  end

  it 'has no flying status when landed' do
  	expect(plane.airborne?).to be_true
  	plane.land_plane
  	expect(plane.airborne?).to be_false
  end
  
  it 'can take off' do
  	plane.land_plane
  	expect(plane.airborne?).to be_false
  	plane.permission_to_fly?
  	expect(plane.permission_to_fly?).to be_true
  end
  
  it 'changes its status to flying after taking of' do
  	plane.land_plane
  	expect(plane.airborne?).to be_false
  	plane.fly
  	expect(plane.airborne?).to be_true
  end
end

