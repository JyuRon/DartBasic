void main() {

  // 기본 자료형

  Null thisIsNull = null;
  print(thisIsNull);


  // var dynamic 자료형
  var value = 1;
  value = 2;
  print(value);

  // 오류
  // value = 3.14;

  dynamic dynamicValue = 3;
  dynamicValue = 3.14;
  dynamicValue = "dynamic value";
  print(dynamicValue);



  // 산술연산자 : / 의 경우 return double
  int num1 = 10;
  int num2 = 3;
  var num3 = num1 / num2;
  print(num3);

  // 문자열 사칙연산
  String str1 = "Hello";
  String str2 = str1 + " world!";
  String str3 = "$str2 World";  // 권장
  print(str2);
  print(str3);


  // null 처리 연산자
  int? num21; // nullable; 일반 int num21 출력 시 오류
  print(num21);
  int num22 = 10;

  print(num21 ?? 5 + num22); // ?? : null 일 경우 default 값

  num21 = 5;
  print(num21! + num22); // ! : non-null 표시


  // 클래스
  Point p1 = Point(3.14,3.1589);
  print(p1);
  print(p1.x);

}

class Point{
  double x;
  double y;

  // named constructors
  Point(this.x, this.y);


// Redirecting constructors : java super()
// Const constructors : 상수 생성자로, 클래스가 불변의 객체를 생성하는 경우 활용
// Factory constructors : java singletone? 매번 새로운 인스턴스를 만들지 않는 생성자를 활용할때 사용
// 이미 존재하는 인스턴스 반환하거나 , 단순한 초기값을 부여가 아닌 연산이 필요한 객체 생성시 활용
}
