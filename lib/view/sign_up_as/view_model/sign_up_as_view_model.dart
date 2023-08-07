import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpAsViewModel extends ChangeNotifier {
  String signUpValues = "User";
  Color ActiveBackgroundColor = Color(0xffE0CBF0);
  Color InActiveBackgroundColor = Color(0xffE3DCE9);

  selectSignUpValues(String signUpValue) {
    
    ActiveBackgroundColor = InActiveBackgroundColor;
    print("+++++++++ $ActiveBackgroundColor");
    notifyListeners();
  }
}
