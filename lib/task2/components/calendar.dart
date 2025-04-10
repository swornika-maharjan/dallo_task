import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:flutterproject/task2/controller/calendar_controller.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final CalendarController controller = Get.put(CalendarController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              height: 392,
              width: 365,
              decoration: BoxDecoration(color: AppColors.dentbox),
              child: Obx(
                () => TableCalendar(
                  focusedDay: controller.focusedDay.value,
                  firstDay: DateTime.utc(2000, 01, 01),
                  lastDay: DateTime.utc(2030, 01, 01),
                  selectedDayPredicate: (day) {
                    return isSameDay(controller.selectedDay.value, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    controller.updateSelectedDay(selectedDay, focusedDay);
                  },

                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: AppColors.calendarcolor.withOpacity(0.5),
                    ),
                    selectedDecoration: BoxDecoration(
                      color: AppColors.calendarcolor,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  headerVisible: true,
                  headerStyle: HeaderStyle(
                    titleCentered: true,
                    titleTextStyle: TextStyle(
                      color: AppColors.dental,
                      fontSize: 16,
                    ),
                    formatButtonVisible: false,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
