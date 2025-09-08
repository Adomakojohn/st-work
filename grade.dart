void main() {
  double grade = avgGrade(grades);

  print(grade);

  for (int i = 0; i < students.length; i++) {
    print('${students[i]} scored ${grades[students[i]]}');
  }
}

List<String> students = ['Kofi', 'Ama', 'Kwame'];

Map<String, int> grades = {students[0]: 20, students[1]: 35, students[2]: 55};

double avgGrade(Map<String, int> grades) {
  if (grades.isEmpty) {
    return 0.0;
  }

  int totalGrades = 0;
  for (int gradeValue in grades.values) {
    totalGrades += gradeValue;
  }

  double avg = totalGrades / grades.length;

  return avg;
}
