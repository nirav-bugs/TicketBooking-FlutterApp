import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/app_layout.dart';
import 'package:ticket_booking/app_styles.dart';
import '../thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
//     return SizedBox(
//       width: size.width * 0.85,
//       // height: 200,
//       child: Container(
//         margin: const EdgeInsets.only(left: 16),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             // for blue part of ticket
//             Container(
//               decoration: const BoxDecoration(
//                 color: Color(0xFF526799),
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(21),
//                     topRight: Radius.circular(21)),
//               ),
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "NYC",
//                         style:
//                             Styles.headlinestyle3.copyWith(color: Colors.white),
//                       ),
//                       // const Spacer(),
//                       Expanded(child: Container()),
//                       const ThickContainer(),
//                       // const Spacer(),
//                       Expanded(
//                           child: Expanded(
//                         child: Stack(children: [
//                           SizedBox(
//                               // height:,
//                               child: LayoutBuilder(builder:
//                                   (BuildContext context,
//                                       BoxConstraints constraints) {
//                             // print(
//                             //     "The width is  ${constraints.constrainWidth()}");
//                             return Flex(
//                               direction: Axis.horizontal,
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: List.generate(
//                                   (constraints.constrainWidth() / 6).floor(),
//                                   (index) => const Text("-")),
//                             );
//                           })),
//                           Center(
//                             child: Transform.rotate(
//                               angle: 1.5,
//                               child: const Icon(
//                                 Icons.local_airport_rounded,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ]),
//                       )),

//                       const ThickContainer(),
//                       // const Spacer(),
//                       Expanded(child: Container()),
//                       Text(
//                         "LDN",
//                         style:
//                             Styles.headlinestyle3.copyWith(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                   const Gap(3),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox(
//                         width: 100,
//                         child: Text(
//                           "New-York",
//                           style: Styles.headlinestyle4
//                               .copyWith(color: Colors.white),
//                         ),
//                       ),
//                       Text(
//                         "BH 30M",
//                         style:
//                             Styles.headlinestyle4.copyWith(color: Colors.white),
//                       ),
//                       SizedBox(
//                         width: 100,
//                         child: Text(
//                           "London",
//                           textAlign: TextAlign.end,
//                           style: Styles.headlinestyle4
//                               .copyWith(color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             )
//             //  now orange part of ticket
//             ,
//             Container(
//               color: Styles.orangeColor,
//               child: Row(
//                 children: [
//                   const SizedBox(
//                     height: 20,
//                     width: 10,
//                     child: DecoratedBox(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(10),
//                               bottomRight: Radius.circular(10),
//                             ))),
//                   ),
//                   Expanded(
//                       child: Padding(
//                     padding: const EdgeInsets.all(12.0),
//                     child: LayoutBuilder(
//                       builder:
//                           (BuildContext context, BoxConstraints constraints) {
//                         return Flex(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           mainAxisSize: MainAxisSize.max,
//                           direction: Axis.horizontal,
//                           children: List.generate(
//                               (constraints.constrainWidth() / 15).floor(),
//                               (index) => const SizedBox(
//                                     width: 5,
//                                     height: 1,
//                                     child: DecoratedBox(
//                                         decoration:
//                                             BoxDecoration(color: Colors.white)),
//                                   )),
//                         );
//                       },
//                     ),
//                   )),
//                   const SizedBox(
//                     height: 20,
//                     width: 10,
//                     child: DecoratedBox(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(10),
//                               bottomLeft: Radius.circular(10),
//                             ))),
//                   ),
//                 ],
//               ),
//             ),
//             // bottom part of ticket last part
//             Container(
//               decoration: BoxDecoration(
//                 color: Styles.orangeColor,
//                 borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(10),
//                   bottomRight: Radius.circular(10),
//                 ),
//               ),
//               padding: const EdgeInsets.only(
//                   left: 16, top: 18, right: 16, bottom: 16),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "1st May",
//                             style: Styles.headlinestyle3
//                                 .copyWith(color: Colors.white),
//                           ),
//                           const Gap(5),
//                           Text(
//                             "Date",
//                             style: Styles.headlinestyle4
//                                 .copyWith(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "23",
//                             style: Styles.headlinestyle3
//                                 .copyWith(color: Colors.white),
//                           ),
//                           const Gap(5),
//                           Text(
//                             "Number",
//                             style: Styles.headlinestyle4
//                                 .copyWith(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text(
//                             "08 : 00 AM",
//                             style: Styles.headlinestyle3
//                                 .copyWith(color: Colors.white),
//                           ),
//                           const Gap(5),
//                           Text(
//                             "Departure Time",
//                             style: Styles.headlinestyle4
//                                 .copyWith(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
    return SizedBox(
      width: size.width * 0.8,
      // height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // Show the blue part of the card/ticket
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xff526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",
                          style: Styles.headlinestyle3
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constrains) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      (constrains.constrainWidth() / 6).floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              )),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: Colors.white)),
                          ),
                        ],
                      )),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text("LDN",
                          style: Styles.headlinestyle3
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New York",
                          style: Styles.headlinestyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        "8H 30M",
                        style:
                            Styles.headlinestyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "London",
                          textAlign: TextAlign.end,
                          style: Styles.headlinestyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //show the orange part of cart/ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constrains) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constrains.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  ),
                ],
              ),
            ),

            //bottom part of the orange part
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1 MAY",
                            style: Styles.headlinestyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: Styles.headlinestyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "08:00 AM",
                            style: Styles.headlinestyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: Styles.headlinestyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "23",
                            style: Styles.headlinestyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: Styles.headlinestyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      )
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
