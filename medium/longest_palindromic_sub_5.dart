String longestPalindrome(String s) {
  String longest = '';
  for(int i=0;i<s.length;i++){
    String palin1 = expandFromCenter(s, i, i);
    String palin2 = expandFromCenter(s, i, i+1);
    longest = palin1.length>longest.length? palin1:longest;
    longest = palin2.length>longest.length? palin2:longest;
  }
  return longest;
}
expandFromCenter(String s,int left,int right){  
  while(left>=0 && right<s.length && s[left]==s[right]){
      left--;
      right++;
  }
  return s.substring(left+1, right);
}

main(){
  // String s = 'aba';
  // bool isPalin = s.split('').reversed.join()==s;
  print(longestPalindrome(''));
}