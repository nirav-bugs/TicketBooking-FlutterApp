// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppLayoutBuilderWidgets extends StatelessWidget {
  final int section;
  final double width;
  final bool? isColor;
  const AppLayoutBuilderWidgets(
      {super.key, this.isColor, required this.section, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constrains) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constrains.constrainWidth() / section).floor(),
            (index) => SizedBox(
              width: width,
              height: AppLayout.getHeight(1),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color:
                        isColor == null ? Colors.white : Colors.grey.shade300),
              ),
            ),
          ),
        );
      },
    );
  }
}
