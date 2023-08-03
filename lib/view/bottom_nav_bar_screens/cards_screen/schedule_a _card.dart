import 'package:eventpro/view/bottom_nav_bar_screens/cards_screen/view-model/card_view-model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/app_button.dart';
import '../../../components/back_button.dart';
import '../../../components/calender_input_widget.dart';
import '../../../components/icon_textfield.dart';
import '../../../components/title_widget.dart';
import '../../../main.dart';

class ScheduleACard extends StatelessWidget {
  const ScheduleACard({super.key});

  @override
  Widget build(BuildContext context) {
    CardsViewModel cardsViewModel = context.watch<CardsViewModel>();
    return Scaffold(
      backgroundColor: constant.appBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const AppBackButton(),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleWidget(
                      topText: "SCHEDULE A",
                      bottomText: "WISH CARD",
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 24),
                      child: Icon(
                        Icons.more_horiz,
                        size: 32,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: constant.appGrey),
                ),
                const SizedBox(
                  height: 50,
                ),
                IconTextField(
                  textInputType: TextInputType.name,
                  textFieldController: cardsViewModel.recipientName,
                  hintText: "Recipient name",
                  widgetIcon: Icon(
                    Icons.person,
                    color: constant.appGrey,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                const CalenderInputWidget(),
                const SizedBox(
                  height: 20,
                ),
                IconTextField(
                  textInputType: TextInputType.name,
                  textFieldController: cardsViewModel.recipientEmailAddress,
                  hintText: "Recipient email address",
                  widgetIcon: Icon(
                    Icons.bar_chart,
                    color: constant.appGrey,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                AppButton(
                  buttonText: "DONE",
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
