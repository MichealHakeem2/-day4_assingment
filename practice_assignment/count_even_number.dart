void main() {
  List<int> numbers = [3, 4, 7, 8, 10, 15, 13, 19, 22, 14];
  int evenCount = countEvenNumbers(numbers);
  print('Number of even numbers: $evenCount');
}
int countEvenNumbers(List<int> numbers){
  int count = 0;
  for(int i=0;i<numbers.length;i++){
    if(numbers[i]%2==0){
      count++;
    }
  }
  return count;
}