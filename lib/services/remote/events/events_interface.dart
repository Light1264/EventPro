import '../../../model/event_response.dart';

abstract class EventInterface {
  Future<EventResponse> scheduleEvent({
    required String eventname,
    required String date,
    required String time,
    required String eventDescription,
    required List eventTypes,
  });
}

abstract class EventRepository implements EventInterface {}

abstract class EventService implements EventInterface {}
