# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
      prev = nil
  curr = head
  
  while curr
    # 1. Store the next node before overwriting the current node's next pointer
    next_node = curr.next
    
    # 2. Reverse the current node's pointer to point to the previous node
    curr.next = prev
    
    # 3. Move the 'prev' and 'curr' pointers one step forward
    prev = curr
    curr = next_node
  end
  
  # When the loop ends, 'prev' will be the new head of the reversed list
  return prev
end