import 'package:flutter/material.dart';
import 'package:flutter_event_calendar/flutter_event_calendar.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/app/userModule/view/activity/viewmodel/eventViewModels.dart';

Widget activitybody() {
  return EventCalendar(
    dayOptions: DayOptions(
        selectedTextColor: AppColors.white,
        selectedBackgroundColor: AppColors.dpurple,
        weekDaySelectedColor: AppColors.black,
        eventCounterColor: AppColors.black),
    calendarType: CalendarType.GREGORIAN,
    calendarLanguage: 'tr',
    calendarOptions: CalendarOptions(
      viewType: ViewType.DAILY,
    ),
    eventOptions: EventOptions(
      emptyText: "Etkinlik Yok",
    ),
    events: [
      Event(
        child: eventViewmodels(),
        dateTime: CalendarDateTime(
          year: 2023,
          month: 11,
          day: 7,
          calendarType: CalendarType.GREGORIAN,
        ),
      ),
    ],
  );
}
