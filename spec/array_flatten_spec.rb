require_relative './spec_helper.rb'
require_relative '../array_flatten.rb'

describe 'array_flatten' do
    it 'takes an array of arbitrarily nested arrays of integers and returns its flattened array of integers' do
        flattened_1 = array_flatten([[1,2,[3]],4])
        flattened_2 = array_flatten([[1,2,[3]],4,[5]])
        flattened_3 = array_flatten([[1,2,[3]],4,[5,[6]]])

        expect(flattened_1).to eq([1,2,3,4])
        expect(flattened_2).to eq([1,2,3,4,5])
        expect(flattened_3).to eq([1,2,3,4,5,6])
    end

    it 'returns the empty array if the original one is empty array' do 
        empty_array = array_flatten([])

        expect(empty_array).to eq([])
    end

    it 'returns the original array if the one contains one item' do
        one_element_array_1 = array_flatten([0])
        one_element_array_2 = array_flatten([1])

        expect(one_element_array_1).to eq([0])
        expect(one_element_array_2).to eq([1])
    end
end