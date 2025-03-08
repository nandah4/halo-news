import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_flutter1/data/data_article.dart';
import 'package:my_flutter1/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String author = "Nicole Goodkind";
  final int times = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Halo."),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: dataArticle.map((datas) {
                  return SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/hero-slide1.jpg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: Colors.black12.withAlpha(30)),
                        Positioned(
                            top: 16,
                            left: 16,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Text(
                                '🔥 News Update',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            )),
                        Positioned(
                            bottom: 90,
                            left: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        'assets/images/hero-slide1.jpg',
                                        height: 25,
                                        width: 25,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'By ${datas['author']} - ${datas['times']} Min',
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  );
                }).toList()),
          )
        ],
      ),
    );
  }
}
