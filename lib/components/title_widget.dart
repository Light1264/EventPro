import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({super.key, required this.bottomText, required this.topText});
  String topText;
  String bottomText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Text(
          bottomText,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
