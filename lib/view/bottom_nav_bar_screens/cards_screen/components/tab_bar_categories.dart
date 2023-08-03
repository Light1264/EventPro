import 'package:eventpro/main.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/cards_screen/schedule_a%20_card.dart';
import 'package:flutter/material.dart';

class TabBarCategories extends StatelessWidget {
  const TabBarCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => const ScheduleACard()),
            ),
          );
          },
          child: Container(
            width: double.infinity,
            height: 105,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: constant.appGrey
            ),
          ),
        ),
      );
    });
  }
}
