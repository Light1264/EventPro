import '../../../model/register_response.dart';

abstract class AuthInterface {
 
  Future<RegisterResponse> registration(
      {required String name, required String email, required String password});
  Future<dynamic> signIn(
      {required String email, required String password});
  Future<dynamic> forgotPassword(
      {required String email,});

}

abstract class AuthRepository implements AuthInterface {}

abstract class AuthService implements AuthInterface {}