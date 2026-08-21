void main() {
  print(secondsConverter(3666));
}
String secondsConverter(int seconds){
  int hours = seconds ~/ 3600;
  int minutes = (seconds % 3600) ~/ 60;
  int remainingSeconds = seconds % 60;
  return '$hours hours, $minutes minutes, $remainingSeconds seconds';
}
