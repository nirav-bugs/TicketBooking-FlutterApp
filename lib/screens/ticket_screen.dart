import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/ticket_tabs.dart';

import '../widgets/column_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headlinestyle,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "upcomming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                width: size.width * 0.8,
                padding: const EdgeInsets.only(left: 15, right: 15),
                margin: EdgeInsets.only(
                  right: AppLayout.getHeight(16),
                  left: AppLayout.getHeight(16),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: '5221 36489',
                          secondText: 'passport',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
