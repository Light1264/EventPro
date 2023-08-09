import 'package:flutter/material.dart';

class ProfileViewModel extends ChangeNotifier {
  //  final AuthService authServices = locator();

  TextEditingController fullName = TextEditingController();
  TextEditingController bio = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();

  
}
