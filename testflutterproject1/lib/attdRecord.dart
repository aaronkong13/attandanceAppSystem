//import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
//import 'package:timezone/browser.dart';

class AttendanceRecord {
  static int attdCount = 0;

  void main() {}

  int takeAttandance() {
    attdCount++;
    //print(attdCount);
    return attdCount;
  }

  timeAndDateOutput() {
    //for time zone
    // Initialize the time zone for Kuala Lumpur
    // final kualaLumpur = getLocation('Asia/Kuala_Lumpur');

    // // Get the current time in Kuala Lumpur
    // final nowKL = TZDateTime.now(kualaLumpur);

    var now = new DateTime.now();
    var formatter = new DateFormat('dd-MM-yyyy');
    print("FOR TERMINAL CHECK");
    print("==================");
    String formattedDate = formatter.format(now);
    print(formattedDate); // 2016-01-25}
    String tdata = DateFormat("hh:mm:ss a").format(now);
    print(tdata);
  }

  getTime() {
    String time = DateFormat("hh:mm:ss a").format(new DateTime.now());
    return time;
  }

  getDate() {
    var now = new DateTime.now();
    var formatter = new DateFormat('dd-MM-yyyy');
    String formattedDate = formatter.format(now);
    return formattedDate;
  }
}
