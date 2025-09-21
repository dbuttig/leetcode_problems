# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    count = 1
    previous_value = nil
    nums.each_with_index do |num, idx|   
        if num == previous_value
            count += 1
        else
            previous_value = num
            count = 1
        end
        
        if count > 2
            nums[idx] = nil
        end
    end
    nums.compact!
    nums.length
end 