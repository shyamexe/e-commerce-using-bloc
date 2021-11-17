import 'package:flutter/material.dart';

AppBar homeAppbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Text(
      'E SQUARE',
      style: TextStyle(fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.indigo[900],
      ),
    ),
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu_rounded),
      color: Colors.green,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.qr_code_scanner_outlined, color: Colors.green,),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.shopping_cart_outlined, color: Colors.green,),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications_outlined, color: Colors.green,),
      ),
    ],
  );
}