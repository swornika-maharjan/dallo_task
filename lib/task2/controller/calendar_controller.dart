import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarController extends GetxController {
  var selectedDay = DateTime.now().obs;
  var focusedDay = DateTime.now().obs;
  var calendarFormat = CalendarFormat.month.obs;

  void updateSelectedDay(DateTime day, DateTime focus) {
    selectedDay.value = day;
    focusedDay.value = focus;
  }

  // void updateCalendarFormat(CalendarFormat format) {
  //   calendarFormat.value = format;
  // }
}
