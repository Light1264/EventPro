import 'package:eventpro/components/back_button.dart';
import 'package:eventpro/components/white_container.dart';
import 'package:eventpro/main.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/search_screens/all_posts.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  UserDetails({super.key});

  // GlobalKey _containerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.appBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              color: constant.appColor,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: AppBackButton(),
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                          color: constant.appBackgroundColor,
                          // borderRadius: const BorderRadius.only(
                          //   bottomLeft: Radius.circular(10),
                          //   bottomRight: Radius.circular(10),
                          // ),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    minRadius: 45,
                    backgroundColor: constant.appBackgroundColor,
                    child: CircleAvatar(
                      minRadius: 42,
                      backgroundColor: constant.appGrey,
                      child: const Icon(Icons.person),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Nara Berry",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: constant.appBlack,
                ),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WhiteContainer(text: "#Birthdays"),
                  const SizedBox(
                    width: 8,
                  ),
                  WhiteContainer(text: "#Art"),
                  const SizedBox(
                    width: 8,
                  ),
                  WhiteContainer(text: "#Weddings")
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Icon(
                              index == 4
                                  ? Icons.star_border_outlined
                                  : Icons.star,
                              color: Color(0xffEFE267),
                              size: 15,
                            );
                          },
                        ),
                      ),
                      Text(
                        "ratings",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: constant.appBlack,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "30",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: constant.appBlack,
                        ),
                      ),
                      Text(
                        "ratings",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: constant.appBlack,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => AllPost()),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 215,
                    decoration: BoxDecoration(
                      color: constant.appWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Posts",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: constant.appBlack,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 18,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 74) /
                                        2,
                                height: 145,
                                decoration: BoxDecoration(
                                  color: constant.appGrey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                // child:
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 68,
                                          height: 68,
                                          decoration: BoxDecoration(
                                            color: constant.appGrey,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          // child:
                                        ),
                                        Container(
                                          width: 68,
                                          height: 68,
                                          decoration: BoxDecoration(
                                            color: constant.appGrey,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          // child:
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 68,
                                          height: 68,
                                          decoration: BoxDecoration(
                                            color: constant.appGrey,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          // child:
                                        ),
                                        Container(
                                          width: 68,
                                          height: 68,
                                          decoration: BoxDecoration(
                                            color: constant.appGrey,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          // child:
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bio",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: constant.appBlack,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Laoreet varius est consequat ridiculus ac. Velit pellentesque mi et egestas purus faucibus non diam. Neque platea ornare arcu molestie vulputate senectus. Risus mi sed nisi.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: constant.appBlack,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Occupation",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: constant.appBlack,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Event Planner & Artist",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: constant.appBlack,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Contact Address",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: constant.appBlack,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.call_outlined,
                          color: constant.appGrey,
                          size: 18,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "08011223344",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: constant.appBlack,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.mail_outline_outlined,
                          color: constant.appGrey,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "narryberry@gmail.com",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: constant.appBlack,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: constant.appGrey,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "16 mid lake road, off light estate, canada.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: constant.appBlack,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
