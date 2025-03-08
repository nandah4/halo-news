import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_flutter1/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "RNL"),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [Container()],
      ),
    );
  }
}
