import 'package:eventpro/main.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/event_screens/event_detail.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/event_screens/schedule_an_event.dart';
import 'package:flutter/material.dart';

import '../../../components/title_widget.dart';
import 'component/upcoming_event_date.dart';
import 'component/upcoming_event_widget.dart';

class UpComingEvents extends StatelessWidget {
  const UpComingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.appBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 15, 0),
                child: Row(
                  children: [
                    CircleAvatar(
                      minRadius: 15,
                      backgroundColor: constant.appBlack,
                      child: const Icon(Icons.person),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.notifications,
                      size: 28,
                      color: constant.appColorDark,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    TitleWidget(
                      topText: "UPCOMING",
                      bottomText: "EVENTS",
                    ),
                    const Spacer(),
                    CircleAvatar(
                      minRadius: 18,
                      backgroundColor: constant.appWhite,
                      child: Icon(
                        Icons.search,
                        size: 25,
                        color: constant.appColorDark,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: constant.appBlack,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 56,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Color.fromARGB(255, 235, 209, 240),
                        ),
                        // child: ,
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 18, 14, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "JULY'26",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: constant.appWhite,
                              ),
                            ),
                            Text(
                              "16 days left",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: constant.appWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              ...List.generate(
                7,
                (int) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Divider(
                              color: Color.fromARGB(255, 181, 181, 181),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80, right: 24),
                            child: Divider(
                              color: constant.appBlack,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      GestureDetector(
                        // onTap: () {
                        //   Navigator.of(context).push(
                        //     MaterialPageRoute(
                        //       builder: ((context) => const EventDetails()),
                        //     ),
                        //   );
                        // },
                        child: Row(
                          children: [
                            UpcomingEventDate(
                              index: int,
                            ),
                            // UpcomingEventWidget(),
                            const Flexible(
                              child: UpcomingEventWidget(),
                            ),
                          ],
                        ),
                      ),
                      ...List.generate(
                        int == 0 ? 1 : 0,
                        (int) {
                          return Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.fromLTRB(80, 8, 24, 5),
                                child: Divider(
                                  color: Color.fromARGB(255, 169, 168, 168),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 80),
                                child: UpcomingEventWidget(),
                              ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => const ScheduleEvent()),
            ),
          );
          // .then((value) => setState((){}));
        },
        backgroundColor: constant.appColorDark,
        child: Center(
          child: Icon(
            Icons.add,
            size: 50,
            color: constant.appWhite,
          ),
        ),
      ),
    );
  }
}
