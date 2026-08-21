void main() {
  int num =12345;
  int reversedNum = reverseNumber(num);
  print(reversedNum);
}
int reverseNumber(int num){
  int reversedNum = 0;
  while(num>0){
    int digit=num%10;
    reversedNum=reversedNum*10+digit;
    num=num~/10;
  }
  return reversedNum;
}
