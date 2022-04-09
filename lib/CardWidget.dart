import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  cardbuilder() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
            height: 100,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$70",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Disscount")
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          cardbuilder(),
          cardbuilder(),
          cardbuilder(),
        ],
      ),
    );
  }
}
