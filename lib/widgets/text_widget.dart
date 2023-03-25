import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;

  const AppDoubleTextWidget(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headlinestyle2,
        ),
        InkWell(
          onTap: () {
            // print("You are clicked");
          },
          child: Text(
            smallText,
            style: Styles.textstyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
