void main() {
  List<int> numbers = [1, 0, 3, 6, 2, 5];

  SelectionSort(numbers);
  print(numbers);
}

void SelectionSort(List<int> numbers) {
  for (int i = 0; i < numbers.length - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[j] < numbers[minIndex]) {
        minIndex = j;
      }
    }

    int temp = numbers[i];
    numbers[i] = numbers[minIndex];
    numbers[minIndex] = temp;
  }
}
