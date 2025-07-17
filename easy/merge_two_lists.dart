
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    Map<ListNode,int>  arr= {};
    ListNode? n = list1;
    while(n!=null){
      arr.addAll({n:n.val});
      n = n.next;
    }n = list2;
    while(n!=null){
      arr.addAll({n:n.val});
      n = n.next;
    }
    var sortedEntries = arr.entries.toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    ListNode? dummy = ListNode(0);
    ListNode? current = dummy;

    for (var entry in sortedEntries) {
      current!.next = ListNode(entry.value);
      current = current.next;
    }

    return dummy.next; }
}