from typing import Optional

class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
        
def mergeNodes(head: Optional[ListNode]):
    sums = ListNode(0)
    newHead = sums
    head=head.next
    while True:
        print(head.val)
        if head.val != 0:
            sums.val+=head.val
        else:
            if head.next is None:
                break
            else:
                sums.next = ListNode(0)
                sums = sums.next
        head = head.next
    return newHead
            
node3 = ListNode(0)
node2 = ListNode(2, node3)
node1 = ListNode(5, node2)
node0 = ListNode(4, node1)
node4 = ListNode(0, node0)
node5 = ListNode(1, node4)
node6 = ListNode(3, node5)
node7 = ListNode(0, node6)

mergeNodes(node1)