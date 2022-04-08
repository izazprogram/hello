
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
   MyList({Key? key}) : super(key: key);

  List<String> names=["Bangla","English","Math","Pagli","Pagol",];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
          title: Text('ListStyle',
          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.blueGrey,
        ),
          body: ListView.builder(

            padding: EdgeInsets.all(30),
            itemCount: names.length,
              itemBuilder: (BuildContext context, int index) {
              return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
                elevation: 3,
                child: ListTile(
                  autofocus: true,
                  minLeadingWidth: 50.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),

                  ),


                  leading: FlutterLogo(size: 20,),
                  trailing: Icon(Icons.delete),
                  title: Text("Bangla"),
                  subtitle: Text("English"),
                  tileColor: Colors.lightGreen,
                  isThreeLine: true,
                ),
              );
              }

          ),

        )
    );
  }
}
