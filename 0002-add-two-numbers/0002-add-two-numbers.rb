# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    a1 = []
        current_node = l1
        while current_node != nil
        a1.unshift current_node.val
        current_node = current_node.next
    end

    a2 = []
        current_node = l2
        while current_node != nil
        a2.unshift current_node.val
        current_node = current_node.next
    end

    i1 = a1.join.to_i
    i2 = a2.join.to_i
    sum = i1 + i2

    sum.to_s.chars.map(&:to_i).reverse
end