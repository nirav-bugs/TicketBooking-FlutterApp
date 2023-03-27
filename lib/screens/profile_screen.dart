import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/column_layout.dart';
import 'package:ticket_booking/widgets/layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(75),
                  width: AppLayout.getHeight(80),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(10),
                      ),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/img_1.png"))),
                ),
                Gap(AppLayout.getWidth(2)),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Book Tickets",
                        style: Styles.headlinestyle,
                      ),
                      const Text(
                        "New-York",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(3),
                            vertical: AppLayout.getHeight(3)),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(100)),
                            color: const Color(0xFFFEF4F3)),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF526799)),
                              child: const Icon(
                                FluentSystemIcons
                                    .ic_fluent_window_shield_filled,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            Gap(AppLayout.getWidth(2)),
                            const Text(
                              "Premium Status",
                              style: TextStyle(
                                  color: Color(0xFF526799),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "Edit",
                          style: Styles.textstyle.copyWith(
                              color: Styles.primaryColor,
                              fontWeight: FontWeight.w300),
                        ))
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            const Divider(
              color: Colors.red,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: AppLayout.getHeight(90),
                  decoration: BoxDecoration(
                      color: Styles.primaryColor,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18))),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: 16, color: const Color(0xFF264CD2)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(25),
                      vertical: AppLayout.getWidth(18)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You got new award",
                            style: Styles.headlinestyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "You have 95 flights in a year",
                            style: Styles.headlinestyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(24)),
            Text(
              "Accomulated miles",
              style: Styles.headlinestyle2,
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(18),
                  ),
                  color: Styles.bgcolor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 2,
                      spreadRadius: 2,
                    )
                  ]),
              child: Column(children: [
                Text(
                  "192802",
                  style: TextStyle(
                      fontSize: 45,
                      color: Styles.textcolor,
                      fontWeight: FontWeight.w500),
                ),
                Gap(AppLayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headlinestyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "11 June 2022",
                      style: Styles.headlinestyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey.shade500,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "23 042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "Airline CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
                const AppLayoutBuilderWidgets(
                  section: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "McDonal's",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
                const AppLayoutBuilderWidgets(
                  section: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: "54.12",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: "DBestate",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
              ]),
            ),
            Gap(AppLayout.getHeight(20)),
            InkWell(
              onTap: () {},
              child: Center(
                child: Text(
                  "How to get more miles...",
                  style: Styles.textstyle.copyWith(
                      color: Styles.primaryColor, fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
