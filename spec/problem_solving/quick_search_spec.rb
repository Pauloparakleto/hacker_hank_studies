RSpec.describe 'QuickSearch' do
  def quicksort(arr, first, last)
    if first < last
      p_index = partition(arr, first, last)
      quicksort(arr, first, p_index - 1)
      quicksort(arr, p_index + 1, last)
    end

    arr
  end

  def partition(arr, first, last)
    # Check https://medium.com/@andrewsouthard1/quicksort-implementation-in-ruby-92de12470efd
      # first select one element from the list, can be any element.
      # rearrange the list so all elements less than pivot are left of it, elements greater than pivot are right of it.
    pivot = arr[last]
    p_index = first

    i = first
    while i < last
      if arr[i] <= pivot
        temp = arr[i]
        arr[i] = arr[p_index]
        arr[p_index] = temp
        p_index += 1
      end
      i += 1
    end
    temp = arr[p_index]
    arr[p_index] = pivot
    arr[last] = temp
    p_index
  end

  let(:array) { [3, 8, 7, 10, 0, 23, 2, 1, 77, 7] }
  let(:array_second) { [7, 8, 1, 2, 90, 4, 65, 32] }

  describe '#quicksort' do
    it 'is sorted' do
      expect(quicksort(array, 0, 9)).to eq([0, 1, 2, 3, 7, 7, 8, 10, 23, 77])
    end
  end
end
