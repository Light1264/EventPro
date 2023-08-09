import 'package:flutter/material.dart';

class EventsViewModel extends ChangeNotifier {
  //  final AuthService authServices = locator();

  TextEditingController eventName = TextEditingController();
  TextEditingController eventDescription = TextEditingController();
  TextEditingController search = TextEditingController();
  bool checkBoxValue = false;
  String signUpValues = "User";

  
}
