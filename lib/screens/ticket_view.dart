import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/widgets/column_layout.dart';
import 'package:ticket_booking/widgets/layout_builder.dart';
import '../utils/app_styles.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final bool? isColor;
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.8,
      height: AppLayout.getHeight(
          GetPlatform.isAndroid && isColor != null ? 166 : 180),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // Show the blue part of the card/ticket
            Container(
              decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xff526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: isColor == null
                              ? Styles.headlinestyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlinestyle3),
                      Expanded(child: Container()),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                              height: AppLayout.getHeight(24),
                              child: const AppLayoutBuilderWidgets(
                                section: 6,
                              )),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xFFBACCCF7))),
                          ),
                        ],
                      )),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headlinestyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlinestyle3),
                    ],
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.headlinestyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlinestyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        // textAlign: TextAlign.end,
                        style: isColor == null
                            ? Styles.headlinestyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlinestyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getHeight(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headlinestyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlinestyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //show the orange part of cart/ticket
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          // color:Colors.white ,
                          color: isColor == null
                              ? Colors.grey.shade300
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getHeight(10)),
                            bottomRight:
                                Radius.circular(AppLayout.getHeight(10)),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(16)),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constrains) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constrains.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: AppLayout.getWidth(5),
                                    height: AppLayout.getHeight(1),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: isColor == null
                                            ? Colors.white
                                            : Colors.grey.shade300,
                                      ),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.grey.shade300
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(10)),
                          )),
                    ),
                  ),
                ],
              ),
            ),

            //bottom part of the orange part
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0)),
              ),
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(16),
                top: AppLayout.getHeight(isColor == null ? 10 : 0),
                right: AppLayout.getHeight(16),
                bottom: AppLayout.getHeight(16),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       ticket['date'],
                      //       style: isColor == null
                      //           ? Styles.headlinestyle3
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headlinestyle3,
                      //     ),
                      //     Gap(AppLayout.getHeight(5)),
                      //     Text(
                      //       "Date",
                      //       style: isColor == null
                      //           ? Styles.headlinestyle4
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headlinestyle4,
                      //     ),
                      //   ],
                      // ),
                      AppColumnLayout(
                        isColor: isColor,
                        firstText: ticket['date'],
                        secondText: "Date",
                        alignment: CrossAxisAlignment.start,
                      ),

                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       ticket['departure_time'],
                      //       style: isColor == null
                      //           ? Styles.headlinestyle3
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headlinestyle3,
                      //     ),
                      //     Gap(AppLayout.getHeight(5)),
                      //     Text(
                      //       "Departure time",
                      //       style: isColor == null
                      //           ? Styles.headlinestyle4
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headlinestyle4,
                      //     ),
                      //   ],
                      // ),
                      AppColumnLayout(
                          isColor: isColor,
                          firstText: ticket['departure_time'],
                          secondText: "Departure time",
                          alignment: CrossAxisAlignment.center),

                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       ticket['number'],
                      //       style: isColor == null
                      //           ? Styles.headlinestyle3
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headlinestyle3,
                      //     ),
                      //     Gap(AppLayout.getHeight(5)),
                      //     Text(
                      //       "Number",
                      //       style: isColor == null
                      //           ? Styles.headlinestyle4
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headlinestyle4,
                      //     ),
                      //   ],
                      // )
                      AppColumnLayout(
                          isColor: isColor,
                          firstText: ticket['number'],
                          secondText: "Number",
                          alignment: CrossAxisAlignment.end),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
