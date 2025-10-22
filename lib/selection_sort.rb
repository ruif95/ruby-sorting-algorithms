module SelectionSort
  def self.sort(array)
    (0...array.length).each do |i|
      unsorted_array = array[i+1, array.length]

      unless unsorted_array.empty?
        smallest_element_index = unsorted_array.index(unsorted_array.min) + (i+1)
        array[i], array[smallest_element_index] = array[smallest_element_index], array[i] if array[i] > array[smallest_element_index]
      end
    end

    array
  end
end
