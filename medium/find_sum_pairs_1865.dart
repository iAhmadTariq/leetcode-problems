class FindSumPairs {
  List<int> nums1 = [];
  List<int> nums2 = [];

  FindSumPairs(List<int> nums1, List<int> nums2) {
    this.nums1 = nums1;
    this.nums2 = nums2;
  }

  void add(int index, int val) {
    nums2[index] += val;
  }

  int count(int tot) {
    Map<int,int> freq = {};
    for(var num in nums1){
      freq[num]=(freq[num]??0)+1;
    }
    int count = 0;
    for(var num in nums2){
      int compl = tot-num;
      if(freq[compl]!=null){
        count+=freq[compl]as int;
      }
    }
    return count;
  }
}

main() {
  FindSumPairs obj = FindSumPairs([1, 1, 2, 2, 2, 3], [1, 4, 5, 2, 5, 4]);
  print(obj.count(7));
  obj.add(3, 2);
  print(obj.count(8));
  print(obj.count(4));
  obj.add(0, 1);
  obj.add(1, 1);
  print(obj.count(7));



}
