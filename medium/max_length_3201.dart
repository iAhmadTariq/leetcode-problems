import 'dart:math';

int maximumLength(List<int> nums) {
    int evens = 0;
    int odds = 0;
    for(var i in nums){
        if(i%2==0)evens++;
        else odds++;
    }
    int alt = min(evens, odds) * 2;
    return max(odds,(max(alt,evens)));
  }

  main(){
    print(maximumLength([1,2,1,1,2,1,2]));
  }