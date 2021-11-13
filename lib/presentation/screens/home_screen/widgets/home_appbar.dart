import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar homeAppbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Text(
      'E SQUARE',
      style: TextStyle(fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.indigo[900],
      ),
    ),
    leading: IconButton(
      onPressed: () {
        return Navigator.of(context).pop();
      },
      icon: const Icon(Icons.menu_rounded),
        color: Colors.black,
      ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppIcons.cartIcon,
          color: Colors.indigo,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppIcons.notificationIcon,
          color: Colors.indigo,
        ),
      ),
    ],
  );
}