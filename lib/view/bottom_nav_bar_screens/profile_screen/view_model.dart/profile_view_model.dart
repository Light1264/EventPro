import 'package:eventpro/services/remote/auth/auth_interface.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileViewModel extends ChangeNotifier {
  //  final AuthService authServices = locator();

  TextEditingController fullName = TextEditingController();
  TextEditingController bio = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();

  
}
