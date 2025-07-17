int matchPlayersAndTrainers(List<int> players, List<int> trainers) {
  players.sort();
  trainers.sort();
  print('players: $players');
  print('trainers: $trainers');
  int counter = 0;
int i=trainers.length-1;int j=players.length-1;;
  while(i>=0){
    while(j>=0){
      if(players[j]<=trainers[i]){
        counter++;
        j--;break;
      }else{
        j--;
      }
    }
    i--;
  }    
  return counter;
}

main(){
  print(matchPlayersAndTrainers([4,7,9], [8,2,5,8]));
}