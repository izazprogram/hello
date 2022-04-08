
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
          title: Text('ListStyle',
          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.blueGrey,
        ),
          body: ListView(

          ),
        )
    );
  }
}
