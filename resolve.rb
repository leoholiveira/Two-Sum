def two_sum(nums, target)
  indices = {}

  nums.each_with_index do |num, index|
    complement = target - num

    if indices.key?(complement)
      return [indices[complement], index]
    end

    indices[num] = index
  end

  return []
end
