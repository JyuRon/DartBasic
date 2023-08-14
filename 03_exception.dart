void main(){

  // 예외 처리 : try-catch-finally
  try{
    // 정수 나눗셈
    print(10 ~/ 3);
    print(10 ~/ 0);
  }catch(error, stack){
    print(error);
    print(stack);
  }finally{
    print("try-catch-finally");
  }

  // 예외 처리 : try - on catch
  // int? : nullable;
  // catchNum! (!) : non-null check
  int? catchNum;
  try{
    // 정수 나눗셈
    print(10 ~/ 0);
    print(catchNum!);
  }on UnsupportedError catch(e,s){
    print("catch UnsupportedError");
  } on TypeError catch (e,s){
    print("cash Type error");
  } catch(error, stack){
    print(error);
    print(stack);
  }finally{
    print("try-catch-finally");
  }


  // 예외 처리 : throw, rethrow : 예외를 다시 던진다.
  try{
    throw Exception("throw new Exception");
  }catch(e,s){
    print(e);
    rethrow;
  }


}