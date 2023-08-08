import 'package:eventpro/components/loader_page.dart';
import 'package:eventpro/view/auth_screens/reset_password.dart';
import 'package:eventpro/view/auth_screens/sign_up_screen.dart';
import 'package:eventpro/view/onboarding_screens/onboarding_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../components/app_button.dart';
import '../../components/app_textfield.dart';
import '../../components/back_button.dart';
import '../../main.dart';
import '../../utils/functions.dart';
import 'view_model/sign_up_view_model.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpViewModel signUpAsViewModel = context.watch<SignUpViewModel>();
    return LoaderPage(
      isLoading: signUpAsViewModel.baseViewModel.isBusy,
      child: Scaffold(
        backgroundColor: const Color(0xffF9EEF8),
        body: Form(
          key: signUpAsViewModel.formKey,
          child: ListView(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset("assets/circle_eventpro.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const AppBackButton(),
                        const SizedBox(
                          height: 120,
                        ),
                        const Text(
                          "Sign In as",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "User",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 78,
                        ),
                        AppTextField(
                          fillColor: constant.appBackgroundColor,
                          textFieldController: signUpAsViewModel.email,
                          textInputType: TextInputType.emailAddress,
                          prefixIcon: const Icon(Icons.mail),
                          hintText: "umunubo.lg@gmail.com",
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        AppTextField(
                          contentPadding:
                              const EdgeInsets.fromLTRB(15, 0, 5, 20),
                          obscureText: signUpAsViewModel.obscureText,
                          fillColor: constant.appBackgroundColor,
                          textFieldController: signUpAsViewModel.password,
                          textInputType: TextInputType.name,
                          prefixIcon: const Icon(Icons.lock_open),
                          hintText: "password",
                          suffixIcon: IconButton(
                            splashColor: Colors.transparent,
                            icon: Icon(
                              signUpAsViewModel.obscureText
                                  ? Icons.visibility_off
                                  : Icons
                                      .visibility, //change icon based on boolean value
                              color: constant.appColorDark,
                            ),
                            onPressed: () {
                              signUpAsViewModel.obscureTextFunction();
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: ((context) => ResetPasswordScreen()),
                              ),
                            );
                          },
                          child: const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 160,
                        ),
                        AppButton(
                          buttonText: "SIGN IN",
                          onPressed: () {
                            if (signUpAsViewModel.email.text.isNotEmpty) {
                              if (signUpAsViewModel.password.text.isNotEmpty) {
                                if (signUpAsViewModel.formKey.currentState
                                        ?.validate() ??
                                    false) {
                                  FocusScope.of(context).unfocus();
                                  signUpAsViewModel.signIn(
                                    context: context,
                                    email: signUpAsViewModel.email.text,
                                    password: signUpAsViewModel.password.text,
                                  );
                                }
                              } else {
                                showMyToast("Please enter your password");
                              }
                            } else {
                              showMyToast("Please enter your email address");
                            }
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "New User? ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: ((context) => SignUpScreen()),
                                  ),
                                );
                              },
                              child: Text(
                                "Register as User",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: constant.appColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
