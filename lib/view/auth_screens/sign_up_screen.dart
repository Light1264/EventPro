import 'package:eventpro/components/loader_page.dart';
import 'package:eventpro/main.dart';
import 'package:eventpro/utils/functions.dart';
import 'package:eventpro/view/auth_screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../components/app_button.dart';
import '../../components/app_textfield.dart';
import '../../components/back_button.dart';
import '../bottom_nav_bar_screens/bottom_nav_bar.dart';
import 'view_model/sign_up_view_model.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  // GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                          "Register as",
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
                          height: 51,
                        ),
                        AppTextField(
                          fillColor: constant.appBackgroundColor,
                          textFieldController: signUpAsViewModel.fullName,
                          textInputType: TextInputType.name,
                          prefixIcon: const Icon(Icons.person),
                          hintText: "Umunubo Elo",
                        ),
                        const SizedBox(
                          height: 24,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              activeColor: constant.appColor,
                              value: signUpAsViewModel.checkBoxValue,
                              onChanged: (value) {
                                signUpAsViewModel.checkBoxOnChanged();
                              },
                            ),
                            const Text(
                              "Agree with ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Terms & Conditions",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: constant.appColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                        AppButton(
                          buttonText: "REGISTER",
                          onPressed: () {
                            if (signUpAsViewModel.fullName.text.isNotEmpty) {
                              if (signUpAsViewModel.email.text.isNotEmpty) {
                                if (signUpAsViewModel
                                    .password.text.isNotEmpty) {
                                  if (signUpAsViewModel.formKey.currentState
                                          ?.validate() ??
                                      false) {
                                    FocusScope.of(context).unfocus();
                                    signUpAsViewModel.Register(
                                      context: context,
                                      name: signUpAsViewModel.fullName.text,
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
                            } else {
                              showMyToast("Please enter your fullname");
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
                              "Already Registered? ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: ((context) => SignInScreen()),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign In",
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
