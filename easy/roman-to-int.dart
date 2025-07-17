void main(){
  romanToInt('XLVII');
}

romanToInt(String roman){
  Map<String,int> map = {
    'I':1,
    'V':5,
    'X':10,
    'L':50,
    'C':100,
    'D':500,
    'M':1000
  };

  List<String> list = roman.split('');
  int number = 0;
  for(int i=0;i<list.length;i++){
    if(i!=list.length-1 && map[list[i]]! < map[list[i+1]]!){
      number += (map[list[i+1]]! - map[list[i]]!);
      i++;
    }else{
      number+= map[list[i]]!;
    }
  }
  print(number);

}