import 'package:flutter/material.dart';

import 'CardWidget.dart';
import 'GirdViewWidget.dart';

class StackWidget extends StatelessWidget {
  StackWidget({Key? key}) : super(key: key);

  final color = Color(0xff0f19dc);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: color,
          ),
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: CardWidget(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            height: 500,
            child: GridViewWidget(),
          ),
        ),
      ],
    );
  }
}
