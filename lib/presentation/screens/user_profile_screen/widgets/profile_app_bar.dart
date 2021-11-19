import 'package:flutter/material.dart';

AppBar ProfileAppbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    title: Text(
      'Profile',
      style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.indigo[900],
      ),
    ),
  
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications_outlined, color: Colors.green,),
      ),
    ],
  );

}