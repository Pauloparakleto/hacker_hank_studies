RSpec.describe 'QuickSearch' do
    FIRST_INDEX = 0

    def particion(array, pivot_index = nil)
        @pivot_index = pivot_index || FIRST_INDEX
        pivot = array[@pivot_index]
        i = 1
        j = 0
        array_length =  array.length - 1

        for i in i..array_length
            if array[i] <= pivot
                j += 1
                element_to_swith_a = array[i]
                element_to_swith_b = array[j]
                array[j] = element_to_swith_a
                array[i] = element_to_swith_b
            end
        end
        array[@pivot_index] = array[j]
        array[j] = pivot
        array
    end

    let(:array) { [3, 8, 7, 10, 0, 23, 2, 1, 77, 7] }
    let(:array_second) { [7, 8, 1, 2, 90, 4, 65, 32] }

    it 'has particioned' do
        expect(particion(array)).to eq([1, 0, 2, 3, 8, 23, 7, 10, 77, 7])
    end

    it 'has particioned chossing 7 as the pivot' do
        index = 0
        expect(particion(array_second, index)).to eq([4, 1, 2, 7, 90, 8, 65, 32])
    end
end