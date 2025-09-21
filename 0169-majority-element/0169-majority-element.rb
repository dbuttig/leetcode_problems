# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hash = Hash.new(0)
    nums.each do |num|
        hash[num] += 1
    end
    
    hash.max_by { |key, value| value }.first
    
end