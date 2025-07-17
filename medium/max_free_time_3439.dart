import 'dart:math';

int maxFreeTime(int eventTime, int k, List<int> startTime, List<int> endTime) {
  List<List<int>> freeTime = [];
  int i=0;
  if(startTime.isEmpty){
    return eventTime;
  }
  if(startTime[0]!=0){
    freeTime.add([0,startTime[0]]);
  }
  while(i<startTime.length-1){
    if(startTime[i+1]-endTime[i]!=0){
      freeTime.add([endTime[i],startTime[i+1]]);
    }
    i++;
  }
  if(endTime[endTime.length-1]<eventTime){
    freeTime.add([endTime[endTime.length-1],eventTime]);
  }
  print(freeTime);
  return 0;
}

main(){
  print(maxFreeTime(10, 1,[0,2,8], [1,4,9]));
}
