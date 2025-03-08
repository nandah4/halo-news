import 'package:flutter/material.dart';
import 'package:my_flutter1/themes/group_colors.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarCustom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsGroup>()!;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: AppBar(
          titleSpacing: 0,
          centerTitle: false,
          title: Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          actions: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            width: 1,
                            color: colors.backgroundCategory ?? Colors.grey)),
                    child: Image.asset(
                      'assets/icons/search-icon.png',
                      height: 20,
                    )),
                SizedBox(width: 10),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            width: 1,
                            color: colors.backgroundCategory ?? Colors.grey)),
                    child: Image.asset(
                      'assets/icons/notification.png',
                      height: 20,
                    )),
              ],
            )
          ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
