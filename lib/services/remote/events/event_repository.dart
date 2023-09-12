import '../../../model/event_response.dart';
import '../../../utils/api_routes.dart';
// import '../../../utils/k_logger.dart';
import '../../../utils/locator.dart';
import '../../local/local_cache.dart';
import '../../network_client.dart';
import 'events_interface.dart';

class EventRepositoryImpl implements EventRepository {
  // final _log = appLogger(AuthRepository);
  final NetworkClient _networkClient = NetworkClient();
  final LocalCache _localCache = locator();

  @override
  Future<EventResponse> scheduleEvent({
    required String eventname,
    required String date,
    required String time,
    required String eventDescription,
    required List eventTypes,
  }) async {
    final response = await _networkClient.post(ApiRoutes.scheduleEvent, body: {
      "eventName": eventname,
      "date": date,
      "time": time,
      "eventDescription": eventDescription,
      "eventTypes": eventTypes,
      "userId": _localCache.getFromLocalCache("id"),
    });
  
    print("@@@@@ ${_localCache.getFromLocalCache("id")}");
    return EventResponse.fromJson(response);
  }

  @override
  Future<EventResponse> scheduleWishCard({
    required String wishCard,
    required String recipientName,
    required int day,
    required int month,
    required int year,
    required int hours,
    required int minutes,
  }) async {
    final response = await _networkClient.post(ApiRoutes.scheduleEvent, body: {
      "userId": _localCache.getFromLocalCache("id"),
      "wishCard": wishCard,
      "recipientName": recipientName,
      "day": day,
      "month": month,
      "year": year,
      "hours": hours,
      "minutes": minutes,
    });

    print("@@@@@ $response");
    return EventResponse.fromJson(response);
  }
}
