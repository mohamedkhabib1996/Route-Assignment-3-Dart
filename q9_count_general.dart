void main() {
  List<int> numbers = [1, 2, 3, 1, 3, 6];

  CountGeneral(numbers);
}

void CountGeneral(List<int> numbers) {
  List<int> checkedNumbers = [];

  for (int i = 0; i < numbers.length; i++) {
    bool alreadyChecked = false;

    for (int j = 0; j < checkedNumbers.length; j++) {
      if (numbers[i] == checkedNumbers[j]) {
        alreadyChecked = true;
        break;
      }
    }

    if (alreadyChecked == false) {
      int count = 0;

      for (int j = 0; j < numbers.length; j++) {
        if (numbers[i] == numbers[j]) {
          count++;
        }
      }

      print("${numbers[i]}->$count");
      checkedNumbers.add(numbers[i]);
    }
  }
}
