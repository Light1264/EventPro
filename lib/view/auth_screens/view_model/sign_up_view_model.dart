import 'package:eventpro/services/remote/auth/auth_interface.dart';
import 'package:eventpro/utils/functions.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import '../../../base_view_model.dart';
import '../../../model/app_state/view_model_state.dart';
import '../../../services/exceptions/failure.dart';
import '../../../utils/locator.dart';

class SignUpViewModel extends ChangeNotifier {
  final AuthService authServices = locator();
  final BaseViewModel baseViewModel = BaseViewModel();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool checkBoxValue = false;
  bool obscureText = true;

  checkBoxOnChanged() {
    checkBoxValue = !checkBoxValue;
    notifyListeners();
  }

  obscureTextFunction() {
    obscureText = !obscureText;
    notifyListeners();
  }

  Register({
    required BuildContext context,
    required String name,
    required String email,
    required String password,
  }) async {
    baseViewModel.changeState(ViewModelState.busy());
    // phonumber = phonumber.substring(1);
    // phonumber = "234$phonumber";
    try {
      await authServices.registration(
          name: name, email: email, password: password);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: ((context) => BottomNavBar(
                index: 0,
              )),
        ),
      );
    } on Failure catch (failure) {
      showMyToast(failure);
    }
    baseViewModel.changeState(ViewModelState.idle());
  }
}
