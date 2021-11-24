import 'package:e_commerce/core/constants/strings.dart';
import 'package:flutter/material.dart';

AppBar homeAppbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Text(
      'E COMMERCE',
      style: TextStyle(fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.darkBlueColor,
      ),
    ),
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu_rounded),
      color: AppColors.darkBlueColor,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon:  Icon(Icons.qr_code_scanner_outlined, color: AppColors.darkBlueColor,),
      ),
      IconButton(
        onPressed: () {},
        icon:  Icon(Icons.shopping_cart_outlined, color: AppColors.darkBlueColor,),
      ),
      IconButton(
        onPressed: () {},
        icon:  Icon(Icons.notifications_outlined, color: AppColors.darkBlueColor,),
      ),
    ],
  );
}