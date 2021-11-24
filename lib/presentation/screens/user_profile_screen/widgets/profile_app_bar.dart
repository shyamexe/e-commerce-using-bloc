import 'package:e_commerce/core/constants/strings.dart';
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
        color: AppColors.darkBlueColor,
      ),
    ),
  
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.logout_outlined, color: AppColors.darkBlueColor,),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.notifications_outlined, color: AppColors.darkBlueColor,),
      ),
    ],
  );

}