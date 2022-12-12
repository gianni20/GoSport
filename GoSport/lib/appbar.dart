import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/images/logo.png', fit: BoxFit.cover, height: 80),
      centerTitle: true,
      toolbarHeight: 80.0,
      backgroundColor: Color.fromRGBO(217, 217, 217, 1.0),
    );
  }


  @override
  Size preferredSize = Size(100, 70);
}