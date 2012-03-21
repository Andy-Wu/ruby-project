require 'spec_helper'

describe InsertSorter do
  it "get ordered array" do

    intArr = [1, 3, 45, 5]
    InsertSorter.sort(intArr).should == [1, 3, 5, 45]
  end
end
