import 'package:flutter/material.dart';
import 'package:my_flutter1/themes/group_colors.dart';
// import 'package:flutter/widgets.dart';

// class CustomListTile extends StatefulWidget {
//   final String image;
//   final String imageAuthor;
//   final String nameAuthor;
//   final String title;
//   final String category;
//   final int hour;
//   final Widget icon;

//   const CustomListTile({
//     super.key,
//     required this.image,
//     required this.imageAuthor,
//     required this.nameAuthor,
//     required this.title,
//     required this.category,
//     required this.hour,
//     required this.icon,
//   });

//   @override
//   State<StatefulWidget> createState() => _CustomListTile();
// }

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.colors,
  });

  final ColorsGroup? colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1.5,
                  color: colors?.backgroundCategory ??
                      Colors.grey.withValues(alpha: 1.2)))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                'assets/images/hero-slide1.jpg',
                height: 85,
                width: 85,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 240,
            // decoration:
            //     BoxDecoration(border: Border.all(width: 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/hero-slide1.jpg',
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "Maureen O'Hare",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "The World's biggest Cruise Ship is Almost Ready.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Travel",
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "4 Hours Ago",
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "3 Min",
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/icons/bookmark-icon.png',
              color: Colors.grey[800],
              width: 20,
              height: 20,
            ),
          ))
        ],
      ),
    );
  }
}
