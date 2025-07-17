List<int> findKDistantIndices(List<int> nums, int key, int k) {
  List<int> indices = [];
  for (int j = 0; j < nums.length; j++) {
    if (nums[j] == key) {
      for (int i = 0; i < nums.length; i++) {
        if ((i - j).abs() <= k) {
          indices.add(i);
        }
      }
    }
  }
  indices.sort();
  Set<int> set = indices.toSet();
  return set.toList();
}

main() {
  // print(findKDistantIndices([2,2,2,2,2], 2, 2));
  List nums = [1,2,3,4,5,6,5,9];
  nums.removeWhere((element) => element==5);
  print(nums);
}
