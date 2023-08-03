import 'package:eventpro/services/remote/auth/auth_interface.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventsViewModel extends ChangeNotifier {
  //  final AuthService authServices = locator();

  TextEditingController eventName = TextEditingController();
  TextEditingController eventDescription = TextEditingController();
  TextEditingController search = TextEditingController();
  bool checkBoxValue = false;
  String signUpValues = "User";

  
}
