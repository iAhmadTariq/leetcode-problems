import 'dart:math';

int maxEvents(List<List<int>> events) {
  events.sort((a,b)=>(a[1].compareTo(b[1])));
  // events.sort((a,b)=>((a[1]-a[0]).compareTo(b[1]-b[0])==0)? a[0].compareTo(b[0]):(a[1]-a[0]).compareTo(b[1]-b[0]));
  print(events);
  List<int> isOccupied = List.filled(100001, 0);
  if(events.isEmpty){
    return 0;
  }
  int counter = 0;

for (int i = 0; i < events.length; i++) {
  List<int> currentEvent = events[i];
  for (int j = currentEvent[0]; j <= currentEvent[1]; j++) {
    if (isOccupied[j] == 0) {
      isOccupied[j] = 1;
      counter++;
      break;
    }
  }
}
  return counter;    
}

main(){
  print(maxEvents([[25,26],[19,19],[9,13],[16,17],[17,18],[20,21],[22,25],[11,12],[19,23],[7,9],[1,1],[21,23],[14,14],[4,7],[16,16],[24,28],[16,18],[4,5],[18,20],[16,16],[25,26]]));
}


// Test Case 1: Maximum Overlapping Events
// Input: events = [[1, 10], [1, 10], [1, 10], [1, 10]]
// Output: 4
// Explanation: All events overlap entirely. You can attend each event on a different day within the range.
// Test Case 2: Large Range of Days
// Input: events = [[1, 100], [50, 100], [60, 70], [90, 95]]
// Output: 4
// Explanation: Despite the large range, you can still attend all events. Attend each on the earliest possible day.
// Test Case 3: Single Day Events
// Input: events = [[1, 1], [2, 2], [3, 3], [4, 4]]
// Output: 4
// Explanation: All events occur on different days. You can attend all of them.
// Test Case 4: Events with Same End Day
// Input: events = [[1, 2], [2, 2], [1, 2], [1, 2]]
// Output: 2
// Explanation: Multiple events end on the same day. You can only attend two of them.
// Test Case 5: No Overlapping Events
// Input: events = [[1, 2], [3, 4], [5, 6]]
// Output: 3
// Explanation: No events overlap, so you can attend all of them.
// Test Case 6: Events with Disjoint Time Intervals
// Input: events = [[1, 2], [4, 5], [7, 8], [10, 11]]
// Output: 4
// Explanation: Each event has a distinct time interval with no overlap. You can attend all events.
// Test Case 7: All Events on Same Day
// Input: events = [[1, 1], [1, 1], [1, 1], [1, 1]]
// Output: 1
// Explanation: All events occur on the same day, so you can only attend one of them.
// Test Case 8: Early Start, Late End
// Input: events = [[1, 3], [2, 4], [3, 5], [4, 6], [5, 7]]
// Output: 5
// Explanation: Each event can be attended on a consecutive day, allowing you to attend all events.
// Test Case 9: Completely Overlapping Events
// Input: events = [[1, 3], [1, 3], [1, 3], [1, 3]]
// Output: 3
// Explanation: Although all events overlap, you can attend three of them on different days.
// Test Case 10: Events with Random Intervals
// Input: events = [[1, 3], [5, 8], [6, 10], [9, 11], [12, 15]]
// Output: 5
// Explanation: Strategic selection of days allows you to attend all five events.
// -- Edit: I see I am getting downvotes :(, if you can comment for me to improve that will be really helpful. thx --
