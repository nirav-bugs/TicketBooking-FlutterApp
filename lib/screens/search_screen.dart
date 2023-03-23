import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';

import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(15),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headlinestyle.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(50),
                  ),
                  color: const Color(0xFFF4F6FD)),
              child: Row(
                children: [
                  // airline tickets
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getWidth(7)),
                    width: size.width * .5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeight(50)),
                        ),
                        color: Colors.white),
                    child: const Center(child: Text("Airline Ticket")),
                  ),
                  //hotels
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getWidth(7)),
                    width: size.width * .5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeight(50)),
                        ),
                        color: Colors.grey.shade200),
                    child: const Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(children: [
              const Icon(
                Icons.flight_takeoff_rounded,
                color: Color(0xFFBFC2DF),
              ),
              Text(
                'Departure',
                style: Styles.textstyle,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
