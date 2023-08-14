import "dart:convert";
import "dart:io";
import "dart:math";

void main(){

  // input
  print("가위, 바위, 보 중 하나를 정해서 입력해 주세요.");

  // ?? : null 인 경우 값을 대체
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';

  // random
  const selectList = ['가위','바위','보'];
  final cpuInput = selectList[Random().nextInt(3)];


  print(getResult(userInput, cpuInput));

}

String getResult(String userInput, String cpuInput){
  String result;

  const cpuWin = '컴퓨터가 승리 하였습니다.';
  const playWin = '사용자가 승리 하였습니다.';
  const draw = '무승부 입니다.';

  switch(userInput){
    case '가위':
      if(cpuInput == '바위'){
        result = cpuWin;
      }else if(cpuInput == '가위'){
        result = draw;
      }else{
        result = playWin;
      }
    case '바위':
      if(cpuInput == '바위'){
        result = draw;
      }else if(cpuInput == '가위'){
        result = playWin;
      }else{
        result = cpuWin;
      }
    case '보':
      if(cpuInput == '바위'){
        result = playWin;
      }else if(cpuInput == '가위'){
        result = cpuWin;
      }else{
        result = draw;
      }
    default:
      result = '옳바르지 않은 입력값입니다.';
  }

  return result;
}