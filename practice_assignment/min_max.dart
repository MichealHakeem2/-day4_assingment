void main() {
  findMinMax(200, 80, 10);
}

void findMinMax(int num1, int num2, int num3) {
  if (num1 > num2 && num1 > num3) {
    print('$num1 is the maximum');
    if(num2<num3){
      print('$num2 is the minimum');
    }else{
      print('$num3 is the minimum');
    }
  } else if (num2 > num1 && num2 > num3) {
    print('$num2 is the maximum');
    if(num1<num3){
      print('$num1 is the minimum');
    }else{
      print('$num3 is the minimum');
    }
  } else {
    print('$num3 is the maximum');
    if(num1<num2){
      print('$num1 is the minimum');
    }else{
      print('$num2 is the minimum');
    }
  }
}
