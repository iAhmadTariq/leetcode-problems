double clockToDegree(int hour, int min){
  double hourDeg = (hour*30)+(0.5*min);
  double minDeg = min * 6;
  double angle = (hourDeg-minDeg).abs();
  return angle>180? 360-angle:angle;
}

main(){
  print(clockToDegree(11, 59));
}