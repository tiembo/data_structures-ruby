require 'spec_helper'
require './lib/node'

describe Node do
  describe '#visit' do
    it 'returns payload' do
      expect(Node.new(1).visit).to eq(1)
    end
  end
end
