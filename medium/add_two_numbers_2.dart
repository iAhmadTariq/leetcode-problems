
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    if(l1==null && l2==null){
      return null;
    }else if(l1==null){
      return l2;
    }else if(l2==null){
      return l1;
    }
    ListNode answer = ListNode(0);
    ListNode finalAnswer = answer;
    int carry = 0;
    while(l1!=null || l2!=null){
      int sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry;
      carry = sum ~/ 10;
      answer.next = ListNode(sum%10);
      answer = answer.next!;
      l1 = l1?.next;
      l2 = l2?.next;
    }
    if(carry==1){
      answer.next = ListNode(1);
    }
    return finalAnswer.next;
  }

  ListNode? addTwoNumbersMethod2(ListNode? l1, ListNode? l2) {
    String n1 ='';
    String n2 = '';
    while(l1!=null){
      n1 = n1+l1.val.toString();
      l1 = l1.next;
    }while(l2!=null){
      n2 = n2+l2.val.toString();
      l2 = l2.next;
    }
    n1 = n1.split('').reversed.join();
    n2 = n2.split('').reversed.join();
    String res = (int.parse(n1)+int.parse(n2)).toString();
    res = res.split('').reversed.join();
    ListNode answer = ListNode();
    ListNode finalAnswer = answer;
    for(var c in res.split('')){
      answer.next = ListNode(int.parse(c));
      answer = answer.next!;
    }
    return finalAnswer.next;
  }

  main(){
    // Helper function to create a linked list from a list of integers
    ListNode? createList(List<int> nums) {
      if (nums.isEmpty) return null;
      ListNode head = ListNode(nums[0]);
      ListNode current = head;
      for (int i = 1; i < nums.length; i++) {
        current.next = ListNode(nums[i]);
        current = current.next!;
      }
      return head;
    }

    ListNode? l1 = createList([9,9,9,9,9,9,9]);
    ListNode? l2 = createList([9,9,9,9]
);

    print(addTwoNumbersMethod2(l1, l2));
  }