import '../../../model/event_response.dart';

abstract class EventInterface {
  Future<EventResponse> scheduleEvent({
    required String eventname,
    required String date,
    required String time,
    required String eventDescription,
    required List eventTypes,
  });
  
    Future<EventResponse> scheduleWishCard({
    required String wishCard,
    required String recipientName,
    required int day,
    required int month,
    required int year,
    required int hours,
    required int minutes,
  });
}

abstract class EventRepository implements EventInterface {}

abstract class EventService implements EventInterface {}
