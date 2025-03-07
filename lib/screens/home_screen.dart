import 'package:flutter/material.dart';
import 'package:my_flutter1/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBarCustom(title: "Insight News"));
  }
}
