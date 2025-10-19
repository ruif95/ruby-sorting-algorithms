require 'spec_helper'
require_relative '../lib/bubble_sort'

RSpec.describe BubbleSort do
  describe '#sort' do
    context 'when given a basic array' do
      it 'returns a sorted array' do
        expect(BubbleSort.sort([1, 3, 5, 2, 4])).to eq([1, 2, 3, 4, 5])
      end
    end

    context 'when given an empty array' do
      it 'returns an empty array' do
        expect(BubbleSort.sort([])).to eq([])
      end
    end

    context 'when given a single-element array' do
      it 'returns the same array' do
        expect(BubbleSort.sort([1])).to eq([1])
      end
    end

    context 'when given an array with duplicate values' do
      it 'handles duplicates correctly' do
        expect(BubbleSort.sort([2, 2])).to eq([2, 2])
        expect(BubbleSort.sort([10, 3, 2, 3, 4, 2])).to eq([2, 2, 3, 3, 4, 10])
      end
    end

    context 'when given an already sorted array' do
      it 'returns the array unchanged' do
        expect(BubbleSort.sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
      end
    end

    context 'when given a reverse-sorted array' do
      it 'sorts it correctly' do
        expect(BubbleSort.sort([5, 4, 3, 2, 1])).to eq([1, 2, 3, 4, 5])
      end
    end
  end
end
