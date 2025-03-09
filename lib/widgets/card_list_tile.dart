import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomListTile extends StatefulWidget {
  final String image;
  final String imageAuthor;
  final String nameAuthor;
  final String title;
  final String category;
  final int hour;
  final Widget icon;

  const CustomListTile({
    super.key,
    required this.image,
    required this.imageAuthor,
    required this.nameAuthor,
    required this.title,
    required this.category,
    required this.hour,
    required this.icon,
  });

  @override
  State<StatefulWidget> createState() => _CustomListTile();
}

class _CustomListTile extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              widget.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
