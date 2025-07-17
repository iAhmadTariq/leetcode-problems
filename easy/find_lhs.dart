int findLHS(List<int> nums) {
  nums.sort();
  int i = 0;
  int j = 0;
  int longestSub =0;
  while(i<nums.length){
    j=i;
    while(j<nums.length){
      if(nums[j]-nums[i]==1){
        longestSub = longestSub>(j-i)? longestSub:j-i+1;
      }
      j++;
    }
    i++;
  }   
  return longestSub; 
}

main(){
  print(findLHS([1,1,1,1]));
}