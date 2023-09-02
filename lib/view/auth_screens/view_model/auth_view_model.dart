import 'package:eventpro/services/remote/auth/auth_interface.dart';
import 'package:eventpro/utils/dialog.dart';
import 'package:eventpro/utils/functions.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import '../../../base_view_model.dart';
import '../../../model/app_state/view_model_state.dart';
import '../../../services/exceptions/failure.dart';
import '../../../utils/locator.dart';

class AuthViewModel extends ChangeNotifier {
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

  register({
    required BuildContext context,
    required String name,
    required String email,
    required String password,
  }) async {
    baseViewModel.changeState(const ViewModelState.busy());
    try {
      await authServices.registration(
        name: name,
        email: email,
        password: password,
      );
      showMyToast("Registration successful");
      baseViewModel.changeState(const ViewModelState.idle());
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: ((context) => BottomNavBar(
                  index: 0,
                )),
          ),
          (route) => false);
      notifyListeners();
    } on Failure {
      baseViewModel.changeState(const ViewModelState.idle());
      notifyListeners();
      showMyToast("An error occured");
    }
    baseViewModel.changeState(const ViewModelState.idle());
  }

  // signIn({
  //   required BuildContext context,
  //   required String email,
  //   required String password,
  // }) async {
  //   baseViewModel.changeState(const ViewModelState.busy());
  //   try {
  //     await authServices.signIn(
  //       email: email,
  //       password: password,
  //     );
  //     showMyToast("Sign In Successful");
  //     baseViewModel.changeState(const ViewModelState.idle());
  //     Navigator.of(context).pushAndRemoveUntil(
  //         MaterialPageRoute(
  //           builder: ((context) => BottomNavBar(
  //                 index: 0,
  //               )),
  //         ),
  //         (route) => false);
  //     notifyListeners();
  //   } on Failure {
  //     baseViewModel.changeState(const ViewModelState.idle());
  //     notifyListeners();
  //     showMyToast("An error occured");
  //   }
  //   baseViewModel.changeState(const ViewModelState.idle());
  // }

  forgotPassword({
    required BuildContext context,
    required String email,
  }) async {
    baseViewModel.changeState(const ViewModelState.busy());
    try {
      await authServices.forgotPassword(
        email: email,
      );
      baseViewModel.changeState(const ViewModelState.idle());
      // ignore: use_build_context_synchronously
      showMyDialog(context, "password reset will begin in a moment");
      notifyListeners();
    } on Failure {
      baseViewModel.changeState(const ViewModelState.idle());
      notifyListeners();
      showMyToast("An error occured");
    }
    baseViewModel.changeState(const ViewModelState.idle());
  }
}
