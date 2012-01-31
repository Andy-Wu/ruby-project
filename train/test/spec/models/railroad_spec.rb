require 'require_relative'
require_relative '../spec_helper'

describe Railroad do
  it "return railroad information" do
    from = "A"
    to = "B"
    railroad = Railroad.new(from, to, 5)

    railroad.from.should == from
    railroad.to.should == to
    railroad.distance.should == 5
  end
end
