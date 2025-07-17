int lengthOfLongestSubstring(String s) {
  String sub = '';
  int length = 0;
  if(s.length==1){
    return 1;
  }
  for(int i=0;i<s.length;i++){
    for(int j=i+1; j< s.length+1;j++){
      if(sub.contains(s[j-1])){
        length = sub.length>length? sub.length:length;
        sub = '';
        break;
      }else{
        sub = s.substring(i,j);
      }
    }
  }
  // int i = 0;int j=1;
  // while(i<s.length && j<s.length){
  //   if(sub.contains(s.substring(j-1,j))){
  //     length = sub.length>length? sub.length:length;
  //     i++;
  //     sub = s.substring(i,j);
  //     j++;
  //   }else{
  //     sub = s.substring(i,j);
  //     j++;
  //   }
  // }
  return length;
}
main(){
  print(lengthOfLongestSubstring("abcabcbb"));
}