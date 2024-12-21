import 'package:flutter/material.dart';

class ContainerRowColum extends StatelessWidget {
  const ContainerRowColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Container Row and Column"),
        centerTitle: true,
      ),
      body: Container(
        width: 1300,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Column 1",
                  style: TextStyle(fontSize: 30),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 1300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCircularContainer("row container", Colors.red),
                          buildCircularContainer("row container", Colors.green),
                          buildCircularContainer(
                              "row container", Colors.yellow),
                          buildCircularContainer(
                              "row container", Colors.blueGrey),
                          buildCircularContainer("row container", Colors.brown),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  "Column 2",
                  style: TextStyle(fontSize: 30),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 1300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCircularContainer("row container", Colors.green),
                          buildCircularContainer(
                              "row container", Colors.blueGrey),
                          buildCircularContainer("row container", Colors.brown),
                          buildCircularContainer("row container", Colors.red),
                          buildCircularContainer(
                              "row container", Colors.yellow),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  "column 3",
                  style: TextStyle(fontSize: 30),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 1300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCircularContainer("row container", Colors.brown),
                          buildCircularContainer("row container", Colors.green),
                          buildCircularContainer(
                              "row container", Colors.blueGrey),
                          buildCircularContainer("row container", Colors.red),
                          buildCircularContainer(
                              "row container", Colors.yellow),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCircularContainer(String text, Color color) {
    return Container(
      height: 250,
      width: 250,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
