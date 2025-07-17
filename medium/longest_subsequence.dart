
import 'dart:math';

int longestSubsequence(String s, int k) {
  String bin = k.toRadixString(2);
  if(s.length<bin.length){
    return s.length;
  }
  for(int i=0;i<s.length-bin.length; i++){
    if(s[i]=='1'){
      s = s.substring(0,i)+''+s.substring(i+1,s.length);
      i--;
    }
  }
  print(s);
  if(binToNum(s)>k){
    return s.length-1;
  }
  return s.length;
}
binToNum(String bin){
  int power =0;
  int num = 0;
  for(int i=bin.length-1;i>=0;i--){
    num+=int.parse(bin[i])*pow(2,power).toInt();
    power++;
  }
  return num;
}

main(){
  // print(binToNum("00101001"));
  print(longestSubsequence("111100010000011101001110001111000000001011101111111110111000011111011000010101110100110110001111001001011001010011010000011111101001101000000101101001110110000111101011000101" , 11713332

));
}