String kthCharacter(int k) {
  String fullString = 'a';
  int length = fullString.length;
  String allAlphapets = 'abcdefghijklmnopqrstuvwxyz';
  while(length<k){
    String stringSoFar = fullString.toString();
    for(var char in stringSoFar.split('')){
      int index = allAlphapets.indexOf(char);
      index ==25? fullString = fullString+'a': fullString = fullString + allAlphapets[index+1];
    }
    length = fullString.length;
  }
  print(fullString);
  return fullString[k-1];    
}

main(){
  print(kthCharacter(10));
}

// a, ab, abbc, abbcbccd