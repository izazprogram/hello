import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {

  final color = Color(0xff0f19dc);

  List data = [{"name":"Order","images":Icons.receipt_long},
{"name":"Order","images":Icons.payment},
{"name":"Order","images":Icons.find_replace},
{"name":"Order","images":Icons.pie_chart},];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GridView.builder(
          itemCount: 4,
        itemBuilder: (context,index){
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              elevation: 18,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(data[index]["images"],
                  size: 100,
                  color: color.withOpacity(0.9)
                  ),
                  Text(data[index]["name"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

                ],
              ),
            );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      ),
    );
  }
}
