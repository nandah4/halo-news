import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class Shape extends StatelessWidget {
  // const Shape({super.key});

  // final List<Widget> myImage = [
  //   Container(height: 10, width: 10),
  // ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 20, left: 18, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Breaking News",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Text(
                "Views All",
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage('assets/image1.jpeg'),
                        height: 300,
                        width: 370,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage('assets/image1.jpeg'),
                        height: 300,
                        width: 380,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: Container(
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 30,
              )),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        ],
      ),
      body: Shape(),
    );
  }
}
