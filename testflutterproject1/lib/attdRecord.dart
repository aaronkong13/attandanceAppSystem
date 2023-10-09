class AttendanceRecord {
  static int attdCount = 0;

  void main() {}

  int takeAttandance() {
    attdCount++;
    print(attdCount);
    return attdCount;
  }
}
