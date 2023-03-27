import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/ticket_tabs.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder.dart';
// ignore: depend_on_referenced_packages
import 'package:barcode_widget/barcode_widget.dart';

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
                  isColor: false,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                width: size.width * 0.8,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: '5221 36489',
                          secondText: 'passport',
                          isColor: false,
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidgets(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: '5646 4564 813258',
                          secondText: 'Number of E-Ticket',
                          isColor: false,
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidgets(
                      section: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: Image.asset("assets/images/img_1.png"),
                                ),
                                const Text("*** 2462")
                              ],
                            ),
                            const Gap(5),
                            Text(
                              "Payment method",
                              style: Styles.headlinestyle4,
                            ),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          isColor: false,
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    const Gap(5),
                  ],
                ),
              ),

              //  bar code  with dependency
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(15)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/tech-Nirav',
                      drawText: false,
                      color: Styles.textcolor,
                      width: double.infinity,
                      height: 75,
                    ),
                  ),
                ),
              ),

              const Gap(15),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(21),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textcolor, width: 2)),
              child: CircleAvatar(
                backgroundColor: Styles.textcolor,
                maxRadius: 4,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textcolor, width: 2)),
              child: CircleAvatar(
                backgroundColor: Styles.textcolor,
                maxRadius: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
