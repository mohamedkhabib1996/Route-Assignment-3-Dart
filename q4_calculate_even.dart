void main() {
  List<int> numbers = [1, 4, 2, 5, -1, 8];

  print(CalculateEven(numbers));
}

int CalculateEven(List<int> numbers) {
  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      sum = sum + numbers[i];
    }
  }

  return sum;
}
