void main() {
  int score = 85;

  if (score >= 80) {
    print('Grade A');
  } else if (score >= 70) {
    print('Grade B');
  } else if (score >= 60) {
    print('Grade C');
  } else if (score >= 50) {
    print('Grade D');
  } else {
    print('Grade F');
  }

  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  for (var fruit in fruits) {
    print(fruit);
  }
}
