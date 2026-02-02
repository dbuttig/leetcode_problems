# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    output = Array.new(nums.length, 1)

    left_product = 1
    nums.each_with_index do |num, i|
        output[i] = left_product
        left_product *= num
    end

    right_product = 1
    (nums.length - 1).downto(0) do |i|
        output[i] *= right_product
        right_product *= nums[i]
    end

    output
end