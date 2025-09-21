# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.each_with_index do |num, idx|
        nums[idx] = nil if num == val
    end
    nums.compact!
    nums.length
end