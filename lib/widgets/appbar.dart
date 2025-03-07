import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarCustom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
      ),
      centerTitle: false,
      actions: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Icon(
                Icons.notifications_on_outlined,
                size: 28,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
