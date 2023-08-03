import 'package:eventpro/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    super.key,
    required this.textInputType,
    required this.textFieldController,
    required this.hintText,
    required this.prefixIcon,
    this.boxShadow = true,
    required this.fillColor,
    this.textFieldHeight = 48,
  });
  TextInputType? textInputType;
  TextEditingController textFieldController;
  Widget prefixIcon;
  String hintText;
  bool boxShadow;
  Color fillColor;
  double textFieldHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: textFieldHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          boxShadow
              ? const BoxShadow(
                  color: Color(0x1F000000),
                  offset: Offset(0, 3),
                  spreadRadius: 1,
                  blurRadius: 6,
                )
              : BoxShadow(color: constant.appWhite)
        ],
      ),
      child: TextField(
        keyboardType: textInputType,
        controller: textFieldController,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          fillColor: fillColor,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(15, 15, 5, 0),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
