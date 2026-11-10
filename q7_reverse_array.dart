import 'dart:io';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  reverseArray(numbers);
}

void reverseArray(List<int> numbers) {
  for (int i = numbers.length - 1; i >= 0; i--) {
    stdout.write(numbers[i]);

    if (i != 0) {
      stdout.write(" ");
    }
  }

  print("");
}
