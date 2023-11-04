import 'package:flutter/material.dart';
import 'package:flutter_event_calendar/flutter_event_calendar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/appbarmodel.dart';
import 'package:toplulugum/view/activity/viewmodel/eventViewModel.dart';

class activityScreen extends StatefulWidget {
  const activityScreen({super.key});

  @override
  State<activityScreen> createState() => _activityScreenState();
}

class _activityScreenState extends State<activityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Activity Hub",
          style: GoogleFonts.orbitron(
            textStyle: TextStyle(
              fontSize: 30,
              color: AppColors.black,
              letterSpacing: 8,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: EventCalendar(
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
            child: EventWidget(
                eventName: "eventName",
                eventDescription: "eventDescription",
                eventDate: "eventDate",
                eventLocation: "eventLocation",
                eventImage:
                    "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg"),
            dateTime: CalendarDateTime(
              year: 2023,
              month: 11,
              day: 4,
              calendarType: CalendarType.GREGORIAN,
            ),
          ),
        ],
      ),
    );
  }
}
