import 'package:flutter/material.dart';
import 'package:flutter_event_calendar/flutter_event_calendar.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/app/global/widgets/cuponcard.dart';

Widget activitybody(ViewType viewType) {
  return EventCalendar(
    dayOptions: DayOptions(
        selectedTextColor: AppColors.white,
        selectedBackgroundColor: AppColors.dpurple,
        weekDaySelectedColor: AppColors.black,
        eventCounterColor: AppColors.black),
    calendarType: CalendarType.GREGORIAN,
    calendarLanguage: 'en',
    calendarOptions: CalendarOptions(
      viewType: viewType,
    ),
    eventOptions: EventOptions(
      emptyText: "Etkinlik Yok",
    ),
    events: [
      Event(
        child: cuponcardModel(
            money: "10",
            location: "koala kafe",
            commintiyname: "Bilişim Toplulupu",
            eventheader: "c dersi",
            eventdescription: "eventdescription",
            date: "9/4/2024"),
        dateTime: CalendarDateTime(
          year: 2024,
          month: 9,
          day: 22,
          calendarType: CalendarType.GREGORIAN,
        ),
      ),
    ],
  );
}
