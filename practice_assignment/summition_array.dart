void main() {
  List<int> numbers = [45, 58, 12, 6, 45, 34];
  int sum = summitionArray(numbers);
  print('Sum of numbers: $sum');
}
int summitionArray(List<int> numbers){
  int sum = 0;
  for(int i=0;i<numbers.length;i++){
    sum+=numbers[i];
  }
  return sum;
}
