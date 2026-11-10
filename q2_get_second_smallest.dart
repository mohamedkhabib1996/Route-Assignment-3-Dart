void main() {
  List<int> numbers = [1, 9, 0, 5, 4, 2];

  print(getSecondSmallest(numbers));
}

int getSecondSmallest(List<int> numbers) {
  int smallest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }

  int? secondSmallest;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] != smallest) {
      if (secondSmallest == null || numbers[i] < secondSmallest) {
        secondSmallest = numbers[i];
      }
    }
  }

  if (secondSmallest == null) {
    throw Exception("There is no second smallest value.");
  }

  return secondSmallest;
}
