List<int> maxSubsequence(List<int> nums, int k) {
  if (nums.length == k) {
    return nums;
  } else {
    List<int> original = nums.toList();
    nums.sort();

    int nth = nums[nums.length-k];
    original.removeWhere((element) => element<nth);
    if(original.length>k){
      int diff = original.length-k;
      int index = 0;
      while(diff>0){
        if(original[index]==nth){
          original.removeAt(index);
          diff--;
        }
          index++;
      }
    }
  return original;
  }
}

main() {
  print(maxSubsequence([-16,-13,8,16,35,-17,30,-8,34,-2,-29,-35,15,13,-30,-34,6,15,28,-23,34,28,-24,15,-17,10,31,32,-3,-36,19,31,-5,-21,-33,-18,-23,-37,-15,12,-28,-40,1,38,38,-38,33,-35,-28,-40,4,-15,-29,-33,-18,-9,-29,20,1,36,-8,23,-34,16,-7,13,39,38,7,-7,-10,30,9,26,27,-37,-18,-25,14,-36,23,28,-15,35,-9,1], 8));
}
