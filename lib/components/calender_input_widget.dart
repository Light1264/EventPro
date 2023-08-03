import 'package:flutter/material.dart';

import '../main.dart';

class CalenderInputWidget extends StatelessWidget {
  const CalenderInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_month_outlined,
          color: constant.appGrey,
          size: 25,
        ),
        const SizedBox(
          width: 11,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 2, 5, 3),
                width: 146,
                decoration: BoxDecoration(
                  border: Border.all(color: constant.appGrey),
                  // color: constant.appWhite,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "wednesday, July 28",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: constant.appBlack,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 2, 5, 3),
                width: 130,
                decoration: BoxDecoration(
                  border: Border.all(color: constant.appGrey),
                  // color: constant.appWhite,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "8:00 - 8:30 am",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: constant.appBlack,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
