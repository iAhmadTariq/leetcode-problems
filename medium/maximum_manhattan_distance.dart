import 'dart:math';

int maxDistance(String s, int k) {
  Map<String, int> freq = Map<String, int>.fromIterable(['N', 'W', 'E', 'S'],
      key: (element) => element, value: (item) => 0);
  for (var c in s.split('')) {
    freq[c] = freq[c]! + 1;
  }
  bool isN = (freq['N']! > freq['S']!);
  bool isW = (freq['W']! > freq['E']!);
  int maxRem = k;
  for (int i = 0; i < s.length; i++) {
    if (maxRem == 0) {
      break;
    }
    switch (s[i]) {
      case 'E':
        if (isW) {
          s = s.substring(0, i) + 'W' + s.substring(i + 1);
          maxRem--;
        }
        break;
      case 'W':
        if (!isW) {
          s = s.substring(0, i) + 'E' + s.substring(i + 1);
          maxRem--;
        }
        break;
      case 'N':
        if (!isN) {
          s = s.substring(0, i) + 'S' + s.substring(i + 1);
          maxRem--;
        }
        break;
      case 'S':
        if (isN) {
          s = s.substring(0, i) + 'N' + s.substring(i + 1);
          maxRem--;
        }

        break;
    }
  }
  print(s);
  List<int> pos = [0,0];
  int maxDistance = 0;
  for(var c in s.split('')){
    switch(c){
      case 'N':
          pos[1]+=1;
          break;
      case 'E':
          pos[0]+=1;
          break;
      case 'W':
          pos[0]-=1;
          break;
      case 'S':
          pos[1]-=1;
          break;
    }
    maxDistance = max((pos[0].abs()+pos[1].abs()),maxDistance);
  }
  return maxDistance;
}

void main() {
  print(maxDistance("WEWE", 1));
}
