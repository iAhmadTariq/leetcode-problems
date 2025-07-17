int possibleStringCount(String word) {
  int counter=1;
    for(int i=0;  i<word.length-1;i++){
      if(word[i+1]==word[i]){
        counter++;
      }
    }
    return counter;
}

main(){
  print(possibleStringCount("aaaa"));
}