import '../../../model/register_response.dart';
import '../../../utils/api_routes.dart';
import '../../../utils/k_logger.dart';
import '../../../utils/locator.dart';
import '../../local/local_cache.dart';
import '../../network_client.dart';
import 'auth_interface.dart';

class AuthRepositoryImpl implements AuthRepository {
  final _log = appLogger(AuthRepository);
  final NetworkClient _networkClient = NetworkClient();
  LocalCache _localCache = locator();

  @override
  Future<RegisterResponse> registration(
      {required String name, required String email, required String password}) async {
    final response = await _networkClient.post(ApiRoutes.register,
        queryParameters: {"name": name, "email": email, "pwd": password});
    return RegisterResponse.fromJson(response);
  }

  @override
  Future<dynamic> signIn(
      {required String email, required String password}) async {
    final response = await _networkClient.post(ApiRoutes.register,
        queryParameters: {"email": email, "pwd": password});
    return response;
  }

   @override
  Future<dynamic> forgotPassword(
      {required String email}) async {
    final response = await _networkClient.post(ApiRoutes.register,
        queryParameters: {"email": email,});
    return response;
  }
}
