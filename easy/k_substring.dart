List<String> divideString(String s, int k, String fill) {
  List<String> output = [];
  for (int i = 0; i < (s.length / k).ceil(); i++) {
    if (i < (s.length ~/ k)) {
      output.add(s.substring(k * i, (k * i) + k));
    } else {
      output.add(s.substring(k * i, s.length));
    }
  }
  if (output.last.length < k) {
    output.last = output.last.padRight(k, fill);
    
  }
  return output;
}

void main() {
  print(divideString("ctoyjrwtngqwt", 8, 'n'));
}
