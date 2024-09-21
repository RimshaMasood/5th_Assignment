/*The program will:
-> Collect employee details such as name (String), age (int), salary (double).
-> Check if the employee is eligible for a bonus based on the number of years worked (bool).
-> Store and print employee details using a List and Map.
-> Calculate the final salary after applying the bonus.*/

import 'dart:io';

void main() {
  stdout.write("Enter employee's name: ");
  String? name = stdin.readLineSync();
  stdout.write("Enter employee's age: ");
  int age = int.parse(stdin.readLineSync()!);
  stdout.write("Enter employee's monthly salary: ");
  double salary = double.parse(stdin.readLineSync()!);
  stdout.write("Enter number of years worked: ");
  int yearsWorked = int.parse(stdin.readLineSync()!);
  bool isEligibleForBonus = yearsWorked >= 5;
  double bonus = isEligibleForBonus ? salary * 0.10 : 0.0;
  double finalSalary = salary + bonus;

  Map employeeDetails = {
    'Name': name,
    'Age': age,
    'Salary': salary,
    'Years Worked': yearsWorked,
    'Eligible for Bonus': isEligibleForBonus,
    'Final Salary': finalSalary
  };
  List<Map> employeeList = [];
  employeeList.add(employeeDetails);

  print("\nEmployee Details:");
  print("Name: ${employeeDetails['Name']}");
  print("Age: ${employeeDetails['Age']}");
  print("Monthly Salary: \Rs.${employeeDetails['Salary']}");
  print("Years Worked: ${employeeDetails['Years Worked']}");
  print("Eligible for Bonus: ${employeeDetails['Eligible for Bonus'] ? "Yes" : "No"}");
  print("Final Salary (with bonus if applicable): \$${employeeDetails['Final Salary']}");
  print("\nAll Employees:");
  for (var employee in employeeList) {
    print(employee);
  }
}
