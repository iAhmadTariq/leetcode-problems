String longestSubsequenceRepeatedK(String s, int k) {
  Map<String, int> freq = {};
  for (var c in s.split('')) {
    freq[c] = (freq[c] ?? 0) + 1;
  }
  for (var c in freq.keys.toList()) {
    if (freq[c]! < k) {
      freq.remove(c);
      s = s.replaceAll(c, '');
    } else {
      freq[c] = (freq[c]! / k).floor();
    }
  }
  if(freq.isEmpty){
    return '';
  }
  List subseqs = generatePermutations(freq);
  print(subseqs);
  for (String sub in subseqs) {
    if (isSubsequence(sub*k, s)) {
      return sub;
    }
  }
  return '';
}

bool isSubsequence(String subsequence, String mainString) {
  int subIndex = 0;
  int mainIndex = 0;

  // Traverse through the mainString
  while (subIndex < subsequence.length && mainIndex < mainString.length) {
    // If characters match, move the pointer for subsequence
    if (subsequence[subIndex] == mainString[mainIndex]) {
      subIndex++;
    }
    // Always move the pointer for mainString
    mainIndex++;
  }

  // If we've matched all characters of subsequence, it's a subsequence
  return subIndex == subsequence.length;
}

List<String> generatePermutations(Map<String, int> letterCounts) {
  // Calculate total count of characters and the highest frequency
  int totalCount = letterCounts.values.fold(0, (sum, count) => sum + count);
  int maxFrequency = letterCounts.values.reduce((a, b) => a > b ? a : b);

  // To store permutations grouped by their length
  Map<int, List<String>> groupedPermutations = {};

  List<String> current = [];
  Map<String, int> currentCounts = Map<String, int>.from(letterCounts);

  // Recursive helper to generate permutations
  void backtrack() {
    // Add current permutation to result if within the desired range
    if (current.length >= maxFrequency && current.length <= totalCount) {
      groupedPermutations.putIfAbsent(current.length, () => []);
      groupedPermutations[current.length]!.add(current.join());
    }

    // Stop recursion if the current length exceeds totalCount
    if (current.length >= totalCount) {
      return;
    }

    // Explore further permutations
    for (String char in letterCounts.keys) {
      if (currentCounts[char]! > 0) {
        current.add(char);
        currentCounts[char] = currentCounts[char]! - 1;

        backtrack();

        currentCounts[char] = currentCounts[char]! + 1;
        current.removeLast();
      }
    }
  }

  // Start generating permutations
  backtrack();

  List<String> result = [];
for (int length = totalCount; length >= maxFrequency; length--) {
  if (groupedPermutations.containsKey(length)) {
    // Sort lexicographically largest first
    groupedPermutations[length]!.sort((a, b) => b.compareTo(a));
    result.addAll(groupedPermutations[length]!);
  }
}

  return result;
}

main() {
  print(longestSubsequenceRepeatedK("bbabbabbbbabaababab", 3));
}
