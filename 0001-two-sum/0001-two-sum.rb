# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, index|
        difference = target - num
        if hash.has_key?(difference)
          return [hash[difference], index]        
        else
            hash[num] = index
        end
    end
end