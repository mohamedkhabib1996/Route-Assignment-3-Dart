void main() {
  List<int> scores = [8, 5, 1, 3];

  analyzeScores(scores);
}

void analyzeScores(List<int> scores) {
  int sum = 0;

  for (int i = 0; i < scores.length; i++) {
    sum = sum + scores[i];
  }

  double average = sum / scores.length;

  int aboveAverage = 0;
  int belowAverage = 0;
  int equalAverage = 0;

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] > average) {
      aboveAverage++;
    } else if (scores[i] < average) {
      belowAverage++;
    } else {
      equalAverage++;
    }
  }

  print("Above average: $aboveAverage");
  print("Below average: $belowAverage");
  print("Equal average: $equalAverage");
}
