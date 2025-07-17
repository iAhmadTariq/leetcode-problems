import 'dart:math';

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
 }

int getDecimalValue(ListNode? head) {
   List<int> bin = [];
  while(head!=null){
    bin.add(head.val);
    head = head.next;
  }
  int j =0;
  int num = 0;
  for(int i=bin.length-1;i>=0;i--){
    num+=(bin[i]*(pow(2, j) as int));
    j++;    
  }
  return num;
}

main(){
  ListNode node3 = ListNode(1);
  ListNode node2 = ListNode(0, node3);
  ListNode node1 = ListNode(1, node2);

  print(getDecimalValue(node1)); // Output should be 5 for binary 101
}