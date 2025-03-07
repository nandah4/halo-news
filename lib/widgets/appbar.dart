import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarCustom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
      ),
      centerTitle: false,
      actions: [
        Row(
          children: [
            Text("Icon 1"),
            Text("Icon 2"),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
