import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/hotel_screen.dart';
import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
import '../widgets/text_widget.dart';
import 'ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: Styles.headlinestyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headlinestyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/img_1.png"))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headlinestyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                const AppDoubleTextWidget(
                  smallText: "View all",
                  bigText: "Upcomming flights",
                )
              ],
            ),
          ),
          const Gap(25),
          // const TicketView(),//if having one data

          //if you have more items to show in scrollview
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              //below is static items
              // children: const [
              //   TicketView(),
              //   TicketView(),
              // ],

              //listing items from data file
              children: ticketList
                  .map((singleticketdetail) =>
                      TicketView(ticket: singleticketdetail))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const AppDoubleTextWidget(
                smallText: "View all",
                bigText: "Hotels",
              )),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // children: const [
                // Padding(padding: EdgeInsets.only(right: 20)),
                // HotelScreen(),
                // HotelScreen(),

                // ],
                children: hotelList
                    .map((singledata) => HotelScreen(hotel: singledata))
                    .toList(),
              )),
        ],
      ),
    );
  }
}
