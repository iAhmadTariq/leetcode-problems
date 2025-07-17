int findLucky(List<int> arr) {
  Map<int,int> freq = {};
  for(var i in arr){
    freq[i]= (freq[i]??0)+1;
  }
  int highest = -1;
  for(var key in freq.keys){
    if(key==freq[key]){
      highest = key>highest? key:highest;
    }
  }
  return highest;
}

main(){
  print(findLucky([2,2,2,3,3]));
}