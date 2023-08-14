void main(){

  // if 문
  int num = 3;
  if(num < 0){
    print("test");
  }else if(num < 20){
    print("20");
  }else{
    print("else test");
  }


  // 문자열 if
  String a = "sample";
  if("sample" == a){
    print("string if");
  }

  num = 101;
  // switch : 3.10 버전 이상 부터 변경된 부분이 존재
  //  ---> break, return 을 안써도 됨
  //  ---> 범위를 지정 할 수 있음 (Only Upper Dart 3.0)
  switch(num){
    case 1:
      print("switch $num"); break;
    case 2:
      print("switch $num"); break;
    case 3:
      print("switch $num"); break;
    case >100:
      print("switch $num"); break;
    default:
      print("switch default : $num");
  }


  // 반복문 - for
  for(int i = 0; i < 5; i++){
    print("for num $i");
  }

  // 반복문 - forEach
  List<int> list = [0,1,2,3,4,5];
  for(final next in list){
    print("for each $next");
  }

  // 반복문 - while
  int whileNum = 5;
  while(whileNum-- > 0){
    print("while num $whileNum");
  }

  // 반복문 - do while
  do{
    print("do while num $whileNum");
  }while(whileNum++ < 10);
}