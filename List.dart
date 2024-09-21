//Dart program to find sum, average, largest no., even & odd no., reversed list & list without duplicates

void main() {
  List<int> numbers = [10, 20, 30, 40, 10, 20, 50];
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  double average = sum / numbers.length;
  print("Sum: $sum");
  print("Average: $average");

  int largest = numbers[0]; 
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }

  print("largest number: $largest.");

  List<int> reversedNumbers = numbers.reversed.toList();
  print("Reversed List: $reversedNumbers");

  int even = 0;
  int odd = 0;
  for (int number in numbers) {
    if (number % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }
  print("Even numbers: $even");
  print("Odd numbers: $odd");

  List<int> uniqueNumbers = numbers.toSet().toList();
  print("List without duplicates: $uniqueNumbers");
}
