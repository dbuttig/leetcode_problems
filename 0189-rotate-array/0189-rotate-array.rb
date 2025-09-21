# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    k.times do
        val = nums.pop
        nums.unshift(val)
    end
    nums
end