class Solution {
  String kthCharacter(int k, List<int> operations) {
  int nextChar(int code) {
    return code == 'z'.codeUnitAt(0) ? 'a'.codeUnitAt(0) : code + 1;
  }
    int step = 0;
    int len = 1;
    while (len < k) {
      len *= 2;
      step++;
    }

    int charCode = 'a'.codeUnitAt(0);
    while (step > 0) {
      len ~/= 2;
      if (k > len) {
        k -= len;
        charCode = nextChar(charCode);
      }
      step--;
    }

    return String.fromCharCode(charCode);
  }

}

void main() {
  var sol = Solution();
  print(sol.kthCharacter(3,[1,0]));  // Output: b
}