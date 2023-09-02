
import '../../../model/event_response.dart';
import '../../../utils/locator.dart';
import '../../local/local_cache.dart';
import 'events_interface.dart';

class EventServiceImpl implements EventService {
  final EventRepository _authRepository;
  // ignore: unused_field
  final LocalCache _localCache;

  EventServiceImpl({
    EventRepository? authRepository,
    LocalCache? localCache,
  })  : _authRepository = authRepository ?? locator(),
        _localCache = localCache ?? locator();



  @override
  Future<EventResponse> scheduleEvent ({
    required String eventname,
    required String date,
    required String time,
    required String eventDescription,
    required List eventTypes,}) async {
    final response = await _authRepository.scheduleEvent(
      eventname: eventname,
      date: date,
      time: time,
      eventDescription: eventDescription,
      eventTypes: eventTypes,
    );
    print("object1");
    print(response.toJson());
    print("object2");
    return response;
  }

}
