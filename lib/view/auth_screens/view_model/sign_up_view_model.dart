import 'package:eventpro/services/remote/auth/auth_interface.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../model/app_state/view_model_state.dart';
import '../../../services/exceptions/failure.dart';
import '../../../utils/locator.dart';

class SignUpViewModel extends ChangeNotifier {
   final AuthService authServices = locator();

  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool checkBoxValue = false;
  String signUpValues = "User";
  Color ActiveBackgroundColor = Color(0xffE0CBF0);
  Color InActiveBackgroundColor = Color(0xffE3DCE9);

  selectSignUpValues(String signUpValue) {
    ActiveBackgroundColor = InActiveBackgroundColor;
    print("+++++++++ $ActiveBackgroundColor");
    notifyListeners();
  }

  checkBoxOnChanged() {
    checkBoxValue = !checkBoxValue;
    notifyListeners();
  }

  Register(
      {
      required BuildContext context,
      required String name,
      required String email,
      required String password,
      }) async {
    // changeState(ViewModelState.busy());
    // changeState()
    // phonumber = phonumber.substring(1);
    // phonumber = "234$phonumber";
    try {
      await authServices..registration(name: name, email: email, password: password);
      Navigator.of(context).push(MaterialPageRoute(builder: ((context) => BottomNavBar(index: 0,))));
    } on Failure catch (failure) {
      // FortCoreFlushbar.showFailure(failure: failure);
    }
    // changeState(ViewModelState.idle());
  }
}
