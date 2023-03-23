import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticket_booking/app_layout.dart';
import 'package:ticket_booking/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.orangeColor,
              image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/img_1.png")),
            ),
          ),
          const Gap(10),
          Text(
            "Open space",
            style: Styles.headlinestyle2.copyWith(color: Colors.white),
          ),
          const Gap(10),
          Text(
            "London",
            style: Styles.headlinestyle2.copyWith(color: Colors.white),
          ),
          const Gap(10),
          Text(
            "\$40/Night",
            style: Styles.headlinestyle2.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}