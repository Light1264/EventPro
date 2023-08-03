import 'package:eventpro/main.dart';
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
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpViewModel signUpAsViewModel = context.watch<SignUpViewModel>();
    return Scaffold(
      backgroundColor: const Color(0xffF9EEF8),
      body: SingleChildScrollView(
        child: Stack(
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "User",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
                    fillColor: constant.appBackgroundColor,
                    textFieldController: signUpAsViewModel.password,
                    textInputType: TextInputType.name,
                    prefixIcon: const Icon(Icons.lock_open),
                    hintText: "password",
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
                  // const Spacer(),
                  AppButton(
                    buttonText: "REGISTER",
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: ((context) => BottomNavBar()),
                      //   ),
                      // );
                      signUpAsViewModel.Register(
                        context: context,
                        name: signUpAsViewModel.fullName.text,
                        email: signUpAsViewModel.email.text,
                        password: signUpAsViewModel.password.text,
                      );
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
      ),
    );
  }
}
