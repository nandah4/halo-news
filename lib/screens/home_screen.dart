import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_flutter1/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Goread."),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50)),
              margin: EdgeInsets.only(left: 15, right: 15, top: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.search_sharp,
                    size: 30,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search', focusedBorder: InputBorder.none),
                  ))
                ],
              ))
        ],
      ),
    );
  }
}
