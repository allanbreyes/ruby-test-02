require 'spec_helper'

RSpec.describe Cipher do
  describe '#encode_word' do
    it 'encodes a word' do
      expect(encode_word('hello', 0)).to eq 'tqxxa'
    end

    it 'raises if a space is introduced' do
      expect { encode_word('hello world', 0) }.to raise_error(ArgumentError)
    end
  end
end
