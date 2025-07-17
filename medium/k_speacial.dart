import 'dart:math';

int minimumDeletions(String word, int k) {
  // Compute frequency of each character
  var freq = <String, int>{};
  for (var char in word.split('')) {
    freq[char] = (freq[char] ?? 0) + 1;
  }
  
  // Get sorted list of frequencies
  List<int> values = freq.values.toList()..sort();
  
  // If string is empty or already k-special, return 0
  if (values.isEmpty || values.last - values.first <= k) {
    return 0;
  }
  
  // Initialize minimum deletions to a large value
  int minDeletions = word.length;
  
  // Try each frequency in values as a possible target frequency in the range [target, target + k]
  for (int target in values) {
    for (int minFreq = max(1, target - k); minFreq <= target; minFreq++) {
      int maxFreq = minFreq + k;
      int deletions = 0;
      
      // Calculate deletions for each frequency
      for (int f in values) {
        if (f < minFreq) {
          deletions += f; // Delete all occurrences
        } else if (f > maxFreq) {
          deletions += f - maxFreq; // Reduce to maxFreq
        }
      }
      
      minDeletions = min(minDeletions, deletions);
    }
  }
  
  return minDeletions;
}

void main() {
  print(minimumDeletions("hbbfhhbhb", 0)); // Output: 3
}