void main() {
  int input = 15;
  bool isPrime = primeNumber(input);
  showDecorationprimenum(isPrime,input);
}
bool primeNumber(int num){
  for(int i=2;i<num;i++){
    if(num%i==0){
      return false;
    }
  }
    return true;
}
void showDecorationprimenum(bool isPrime,int num){
  if(isPrime){
    print('========================================');
    print('$num is a prime number');
    print('========================================');
  }else{
    print('$num is not a prime number');
  }
}