import 'dart:io';

void main() {
  List<int> numbers = [1, 2, 3, 2, 1, 6, 3, 4, 5, 2];

  getDistinctNumbers(numbers);
}

void getDistinctNumbers(List<int> numbers) {
  List<int> distinctNumbers = [];

  for (int i = 0; i < numbers.length; i++) {
    bool exists = false;

    for (int j = 0; j < distinctNumbers.length; j++) {
      if (numbers[i] == distinctNumbers[j]) {
        exists = true;
        break;
      }
    }

    if (exists == false) {
      distinctNumbers.add(numbers[i]);
    }
  }

  print("The number of distinct numbers is ${distinctNumbers.length}");
  stdout.write("The distinct numbers are: ");

  for (int i = 0; i < distinctNumbers.length; i++) {
    stdout.write(distinctNumbers[i]);

    if (i != distinctNumbers.length - 1) {
      stdout.write(" ");
    }
  }

  print("");
}
