require 'spec_helper.rb'
require './lib/linked_list.rb'

describe LinkedList do
  let (:list0) { LinkedList.new }
  let (:list1) { list0.add(1); list0 }
  let (:list123) { list1.add(2); list1.add(3); list0 }

  describe '#add' do
    it 'adds a LinkedListNode to the end of the linked list with the given data' do
      list0.add(1)
      expect(list0.as_string).to eq("1")
      list0.add(2)
      list0.add(3)
      expect(list0.as_string).to eq("123")
    end
  end

  describe '#as_string' do
    it 'returns the string representation of the linked list' do
      expect(list0.as_string).to eq("")
      expect(list1.as_string).to eq("1")
      expect(list123.as_string).to eq("123")
    end
  end

  describe '#reverse_in_place' do
    it 'reverses the linked list in place' do
      list0.add(1)
      list0.add(2)
      list0.add(3)
      list0.add(4)
      list0.add(5)
      expect(list0.as_string).to eq("12345")
      list0.reverse_in_place
      expect(list0.as_string).to eq("54321")
    end
  end
end
