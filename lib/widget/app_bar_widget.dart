import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff24263B),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Color(0xffFFFFFF),
        ),
      ),
      elevation: 7,
      centerTitle: true,
      iconTheme: IconThemeData(color: Color(0xffFFFFFF)),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50);
}
