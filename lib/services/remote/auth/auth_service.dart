
import 'package:shared_preferences/shared_preferences.dart';

import '../../../model/register_response.dart';
import '../../../utils/locator.dart';
import '../../local/local_cache.dart';
import 'auth_interface.dart';

class AuthServiceImpl implements AuthService {
  final AuthRepository _authRepository;
  final LocalCache _localCache;

  AuthServiceImpl({
    AuthRepository? authRepository,
    LocalCache? localCache,
  })  : _authRepository = authRepository ?? locator(),
        _localCache = localCache ?? locator();



  @override
  Future<RegisterResponse> registration ({required String name, required String email, required String password}) async {
    final response = await _authRepository.registration(
      name: name,
      email: email,
      password: password
    );
    print("object1");
    print(response.toJson());
    print("object2");
    return response;
  }

   @override
  Future<dynamic> signIn ({required String email, required String password}) async {
    final response = await _authRepository.signIn(
      email: email,
      password: password
    );
    print("object1");
    print(response.toJson());
    print("object2");
    return response;
  }

   @override
  Future<dynamic> forgotPassword ({required String email,}) async {
    final response = await _authRepository.forgotPassword(
      email: email,
    );
    print("object1");
    print(response.toJson());
    print("object2");
    return response;
  }

}
