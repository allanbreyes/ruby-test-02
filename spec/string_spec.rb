require 'spec_helper'

RSpec.describe String do
  subject { 'the quick brown fox jumps over the lazy dog' }
  specify { expect(subject).to be_monkey_patched }

  describe '#titleize' do
    it 'title-cases a sentence' do
      expect(subject.titleize).to eq 'The Quick Brown Fox Jumps Over The Lazy Dog'
    end
  end

  describe '#encoded' do
    it 'encodes a sentence' do
      expect(subject.encoded).to eq 'ftq cguow ndaiz raj vgybe ahqd ftq xmlk pas'
    end
  end
end
