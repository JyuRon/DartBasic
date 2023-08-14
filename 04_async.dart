void main(){

  // async / await / Future : 1회만 응답을 돌려 받는 경우 (서버 - 클라이언트)
 Future<void> todo(int second) async {
   await Future.delayed(Duration(seconds: second));
   print("TODO Done in $second seconds");
 }
  todo(3);
  todo(1);
  todo(2);
 
  
  // async* / yield / Stream : 지속적 으로 응답을 돌려 받는 경우 (타이머 같이 1초단위 응답)
  Stream<int> todo2() async*{
    int counter = 0;
    while(counter++ < 10){
      await Future.delayed(Duration(seconds: 1));
      print("TODO2 Done in $counter seconds");
      yield counter;
    }
    print("TODO2 id done");
  }
 
  todo2().listen((event) { });
}