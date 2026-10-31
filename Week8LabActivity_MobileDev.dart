import 'dart:io';

// Computation of overall average
double calculateAverage(double grade1, double grade2, double grade3, double grade4, double grade5) {
  return (grade1 + grade2 + grade3 + grade4 + grade5) / 5;
}

void main() {
  try {
    print("\n>>>>>> STUDENT GRADE COMPUTATION PROGRAM <<<<<<\n");

    stdout.write("Your Name: ");
    String name = stdin.readLineSync()!;

    double total = 0;

    // Loop for 5 grades input
    for (int i = 1; i <= 5; i++) {
      stdout.write("Grade $i: ");
      double grade = double.parse(stdin.readLineSync()!);

      total += grade;
    }

    // Add and Divide overall grades to get average
    double average = total / 5;

    print("\n>>>>>> STUDENT GRADE RESULT <<<<<<");
    print("\nStudent Name: $name");
    print("Average Grade: ${average.toStringAsFixed(2)}");

    // Conditional statement for PASS or FAIL student
    if (average >= 75) {
      print("Result: PASSED: Congratulations!");
    } else {
      print("Result: FAILED: Sorry, you need to work harder.");
    }

  } catch (e) {
    print("\nInvalid input!");
    print("Please enter numbers only for the grades.");
  }
}