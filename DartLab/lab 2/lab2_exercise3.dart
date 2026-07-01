void main() {
  List<String> subjects = ['Math', 'English', 'History'];

  print(subjects.length);
  print(subjects[0]);
  print(subjects[subjects.length - 1]);

  subjects.add('Art');
  print(subjects);

  print('---');

  Map<String, int> studentScores = {'Math': 45, 'English': 75};

  print(studentScores['English']);

  studentScores['History'] = 82;
  print(studentScores);

  for (var entry in studentScores.entries) {
    if (entry.key.contains('a') || entry.key.contains('A')) {
      print('${entry.key}: ${entry.value}');
    }
  }

  for (var entry in studentScores.entries) {
    if (entry.value > 50) {
      print('${entry.key}: ${entry.value}');
    }
  }
}
