require 'spec_helper'
require './lib/binary_node'

describe BinaryNode do
  describe '#initilize' do
    it 'initializes left and right children to nil by default' do
      b = BinaryNode.new(1)
      expect(b.left_child).to be_nil
      expect(b.right_child).to be_nil
    end
  end

  describe '#visit' do
    it 'returns payload' do
      expect(BinaryNode.new(1).visit).to eq(1)
    end
  end
end
