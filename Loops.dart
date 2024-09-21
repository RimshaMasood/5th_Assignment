import 'dart:io';
void main() {
  List<int> numbers = [];
  for (int i = 1; i <= 4; i++) {
    stdout.write("Enter positive integer $i: ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  List<List> tables = List.generate(4, (_) => []);
  for (int i = 0; i < 4; i++) {
    int j = 1; 
    while (j <= 10) {
      tables[i].add("${numbers[i]} * $j = ${numbers[i] * j}");
      j++;
    }
  }
  print("\nMultiplication tables of ${numbers.join(", ")}:");
  int index = 0; 
  do {
    print(
      "${tables[0][index].padRight(20)}  "
      "${tables[1][index].padRight(20)}  "
      "${tables[2][index].padRight(20)}  "
      "${tables[3][index]}");
    index++;
  } while (index < 10); 
}
