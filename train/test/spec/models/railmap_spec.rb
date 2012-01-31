require 'require_relative'
require_relative '../spec_helper'

describe RailMap do
  
  before(:all) do
    routes = "AB5, BC4, CD8, DC8, DE6, AD5, CE2, EB3, AE7"
    @railmap = RailMap.new(routes)
  end

  it "the size of railroads equal to 9" do
    @railmap.railroads.size.should == 9 
  end

  it "the distance of the route A-B-C should equal to 9" do
    @railmap.distance("A-B-C").should == 9
  end

  it "the distance of the route A-D should equal to 5" do
    @railmap.distance("A-D").should == 5
  end

  it "should 'No such route' of the route A-E-D" do
    @railmap.distance("A-E-D").should == "No such route"
  end

  it "the length of shortest route from A to E should equal to 7" do
    @railmap.shortest_route_length("A","E").should == 7
  end

  it "the shortest route from A to C should be 'A-B-C'" do
    @railmap.shortest_route("A","C").should == "A-B-C"
  end

end
