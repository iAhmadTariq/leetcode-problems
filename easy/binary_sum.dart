import 'dart:math';

String addBinary(String a, String b) {
  if(a.length>b.length){
    b= b.padLeft(a.length,'0');
  }else{
    a =a.padLeft(b.length,'0');
  }
  int len = a.length;
  String answer = '';
  int carryFlag = 0;
  while(len>0){ 
    int sum = int.parse(a[len-1])+int.parse(b[len-1])+carryFlag;
    if(sum==0){
      answer = '0'+answer;
      carryFlag =0;
    }else if(sum ==1){
      answer = '1'+answer;
      carryFlag =0;
    }else if(sum ==2){
      answer = '0'+answer;
      carryFlag =1;
    }
    else{
      answer = '1'+answer;
        carryFlag=1;
    }
    len--;
  }
  answer = carryFlag==1? '1'+answer:answer;
  return answer;
}

  main(){
    print(addBinary('', ''));
  }