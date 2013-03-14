require 'spec_helper'
require './lib/binary_node'

describe BinaryNode do
  describe '#initilize' do
    it 'should initialize left and right children to nil by default' do
      b = BinaryNode.new(1)
      b.left_child.should be_nil
      b.right_child.should be_nil
    end
  end

  describe '#visit' do
    it 'should return payload' do
      BinaryNode.new(1).visit.should == 1
    end
  end
end