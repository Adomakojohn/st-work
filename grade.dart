void main() {
  double grade = avgGrade(grades);

  print(grade);

  for (int i = 0; i < students.length; i++) {
    print('${students[i]} scored ${grades[students[i]]}');
    if (grades[students[i]]! >= 50) {
      print('${students[i]} had A');
    } else if (grades[students[i]]! >= 40 && grades[students[i]]! < 50) {
      print('${students[i]} had B');
    } else if (grades[students[i]]! >= 30 && grades[students[i]]! < 40) {
      print('${students[i]} had C');
    } else if (grades[students[i]]! >= 20 && grades[students[i]]! < 30) {
      print('${students[i]} had D');
    } else {
      print('${students[i]} failed');
    }
  }
}

List<String> students = ['Kofi', 'Ama', 'Kwame'];

Map<String, int> grades = {students[0]: 20, students[1]: 35, students[2]: 55};

double avgGrade(Map<String, int> grades) {
  int totalGrades = 0;
  for (int gradeValue in grades.values) {
    totalGrades += gradeValue;
  }

  double avg = totalGrades / grades.length;

  return avg;
}
