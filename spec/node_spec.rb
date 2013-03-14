require 'spec_helper'
#require '../lib/node'

describe Node do
  describe '#visit' do
    it 'should return payload' do
      Node.new(1).visit.should == 1
    end
  end
end