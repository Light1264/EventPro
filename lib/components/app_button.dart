import 'package:eventpro/main.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({super.key, required this.buttonText, required this.onPressed});
  String buttonText;
  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            constant.appColor,
          ),
          elevation: MaterialStateProperty.all<double>(0),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xffFEFDFF),
          ),
        ),
      ),
    );
  }
}
