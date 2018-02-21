class Array

  def my_uniq
    result = []
    i = 0
    while i < self.length
      result << self[i] unless result.include?(self[i])
      i += 1
    end
    result
  end

  def two_sum
    result = []
    (0...self.length).each do |idx|
      j = idx + 1
      while j < self.length
        result << [idx, j ] if self[idx] + self[j] == 0
        j += 1
      end
    end

    result
  end
end

def my_transpose(arr)
  transposed_arr = []

  arr[0].length.times do |inner_idx|
    i = 0
    temp_arr = []
    while i < arr.length
      temp_arr << arr[i][inner_idx]
      i+=1
    end
    transposed_arr << temp_arr
  end
  transposed_arr
end


def stock_picker(stock_arr)
  results = Hash.new

  i = 0
  while i < stock_arr.length
    j = i + 1
    while j < stock_arr.length
      results[[i,j]] = stock_arr[j] - stock_arr[i]
      j += 1
    end
    i += 1
  end

  val = results.values.max
  results.key(val)
end
