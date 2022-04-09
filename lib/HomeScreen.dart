import 'package:flutter/material.dart';

import 'StackWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final colors = Color(0xfd726b72);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(

        backgroundColor: Colors.grey,
        appBar: AppBar(
          toolbarHeight: 100,
          leadingWidth: 80,
          backgroundColor: Colors.grey,
          shadowColor: Colors.transparent,
         leading: Icon(Icons.arrow_back_ios),


          actions:  [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Icon(Icons.shopping_cart),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Icon(Icons.segment),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),


        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/hello.png"),

                    ),
                    Text("Codetod",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),

                  ],
                ),
              ),
              StackWidget()
            ],
          ),
        ),
      ),
    );
  }
}
