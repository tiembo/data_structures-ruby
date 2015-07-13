require 'spec_helper'
require './lib/linked_list_node'

describe LinkedListNode do
  let(:node1) { LinkedListNode.new(1) }

  describe '#next' do
    context 'no next node' do
      it 'returns nil' do
        expect(node1.next).to eq(nil)
      end
    end

    context 'has next node' do
      let (:node2) { LinkedListNode.new(2) }

      it 'returns next node' do
        node1.next = node2
        expect(node1.next).to eq(node2)
      end
    end
  end

  describe '#data' do
    it 'returns the data object of node' do
      expect(node1.data).to eq(1)
    end
  end
end
