class IsSign{

  List<String> signs = ['+','-','*','/'];

  isSign(String char){
    for(String sign in signs){
      if (char == sign){
        return true;
      }
    }
  }
}