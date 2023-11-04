import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_event_calendar/flutter_event_calendar.dart';
import 'package:toplulugum/view/activity/viewmodel/eventViewModel.dart';

class EventDatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Event>> getEvents() async {
    QuerySnapshot querySnapshot = await _firestore.collection('events').get();
    List<Event> events = [];

    for (QueryDocumentSnapshot doc in querySnapshot.docs) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      events.add(Event(
        child: EventWidget(
            eventDate: data["time"],
            eventDescription: data["eventDescription"],
            eventImage: data["eventImage"],
            eventLocation: data["eventlocation"],
            eventName: data["eventname"]),
        dateTime: CalendarDateTime(
          year: data['year'],
          month: data['month'],
          day: data['day'],
          calendarType: CalendarType.GREGORIAN,
        ),
      ));
    }

    return events;
  }
}
