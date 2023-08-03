import 'package:flutter/material.dart';

import '../../../../main.dart';

class UpcomingEventWidget extends StatelessWidget {
  const UpcomingEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "11:00 - 1:00pm",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: constant.appBlack,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Icon(Icons.more_horiz),
            )
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          "Kings Birthday",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: constant.appBlack,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 2, 10, 3),
              decoration: BoxDecoration(
                color: constant.appColorDark,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
              child: Text(
                "Love",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: constant.appWhite,
                ),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 2, 10, 3),
              decoration: const BoxDecoration(
                color: Color(0xffF230F6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Text(
                "me",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: constant.appWhite,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
