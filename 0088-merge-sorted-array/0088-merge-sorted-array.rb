# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    idx = nums1.length
    while nums2.length > 0
        idx -= 1
        return nums1 if n == 0
        
        if m.nil? || m ==0 || nums2[n-1] > nums1[m-1]
            nums1[idx] = nums2.delete_at(n-1)
            n -= 1
        else
            nums1[idx] = nums1[m-1]
            m -= 1
        end
    end
    nums1
end