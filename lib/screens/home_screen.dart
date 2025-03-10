import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_flutter1/data/data_article.dart';
import 'package:my_flutter1/themes/group_colors.dart';
import 'package:my_flutter1/widgets/appbar.dart';
import 'package:my_flutter1/widgets/card_list_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsGroup>();
    return Scaffold(
        appBar: AppBarCustom(title: "Halo."),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
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
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          Colors.black.withValues(alpha: 0.6),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                  )),
                              Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 3),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Text(
                                      '🔥 News Update',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )),
                              Positioned(
                                  bottom: 16,
                                  left: 16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
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
                                      Container(
                                        margin: EdgeInsets.only(top: 8),
                                        width: 320,
                                        child: Text(
                                          '${datas['title']}',
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 13),
                                        child: Row(children: [
                                          Container(
                                              margin: EdgeInsets.only(right: 5),
                                              height: 2.5,
                                              width: 25,
                                              color: colors?.backgroundCategory
                                                  ?.withValues(alpha: 0.5)),
                                          Container(
                                              margin: EdgeInsets.only(right: 5),
                                              height: 2.5,
                                              width: 25,
                                              color: colors?.backgroundCategory
                                                  ?.withValues(alpha: 0.9))
                                        ]),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        );
                      }).toList()),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 25),
                  height: 33,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: scrollMenu.length,
                      itemBuilder: (context, item) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: item == 0 ? 16 : 5,
                              right: item == scrollMenu.length - 1 ? 16 : 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: item == 0
                                    ? Colors.green[800]
                                    : Colors.grey[200],
                                borderRadius: BorderRadius.circular(18)),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            alignment: Alignment.center,
                            child: Text(
                              '${scrollMenu[item]}',
                              style: TextStyle(
                                color:
                                    item == 0 ? Colors.white : Colors.grey[700],
                                fontSize: 14,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      NewsCard(colors: colors),
                      NewsCard(colors: colors),
                      NewsCard(colors: colors),
                      NewsCard(colors: colors)
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
