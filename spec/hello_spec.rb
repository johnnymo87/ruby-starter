# frozen_string_literal: true

require 'hello'

RSpec.describe Hello do
  describe '.world' do
    subject(:hello_world) { described_class.world }

    it 'should return the string "hello world"' do
      expect(hello_world).to eq('hello world')
    end
  end
end
