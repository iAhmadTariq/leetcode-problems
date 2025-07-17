bool isValid(String word) {
  if(word.length<3)return false;
  if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(word)) return false;
  if (!RegExp(r'[aeiouAEIOU]').hasMatch(word)) return false;
  if (!RegExp(r'[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]').hasMatch(word)) return false;
  return true;
}

main(){
  print(isValid('a1231bcdh'));
}