void main() {
  List<int> numbers = [8, 0, 1, 5];

  print(getMin(numbers));
}

int getMin(List<int> numbers) {
  int min = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }

  return min;
}
