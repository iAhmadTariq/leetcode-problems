import 'dart:math';

int numSubseq(List<int> nums, int target) {
    nums.sort();
  if(nums[0]+nums[0]>target){
    return 0;
  }
  int i=0; int j=0;
  int counter = 0;
  const int MOD = 1000000007;
  //[2,3,3,4,6,7]
  while(i<nums.length){
    j=i;
    while(j<nums.length){
      if(nums[i]+nums[j]<=target){
        if(j>i+1)counter= (((counter + ((((pow(2,j-i-1) as int )%MOD)+MOD)%MOD))% MOD) + MOD) % MOD;
        else counter= (((counter +1)% MOD) + MOD) % MOD;
      }
      j++;
    }
    i++;
  }
return counter; 
  }

// Input: nums = [3,5,6,7], target = 9
// Output: 4
// Explanation: There are 4 subsequences that satisfy the condition.
// [3] -> Min value + max value <= target (3 + 3 <= 9)
// [3,5] -> (3 + 5 <= 9)
// [3,5,6] -> (3 + 6 <= 9)
// [3,6] -> (3 + 6 <= 9)

main(){
  print(numSubseq([9,25,9,28,24,12,17,8,28,7,21,25,10,2,16,19,12,13,15,28,14,12,24,9,6,7,2,15,19,13,30,30,23,19,11,3,17,2,14,20,22,30,12,1,11,2,2,20,20,27,15,9,10,4,12,30,13,5,2,11,29,5,3,13,22,5,16,19,7,19,11,16,11,25,29,21,29,3,2,9,20,15,9], 32));
}