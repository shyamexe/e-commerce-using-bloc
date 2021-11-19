import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar DeviceAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {
        
      },
      icon: Icon(Icons.menu_rounded,color: AppColors.darkBlueColor,)
    ),
    title: Text(
      "SHOP",
      style: TextStyle(
        color: AppColors.darkBlueColor,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppIcons.notificationIcon,
          color: AppColors.darkBlueColor,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppIcons.cartIcon,
          color: AppColors.darkBlueColor,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppIcons.searchIcon,
          color: AppColors.darkBlueColor,
        ),
      ),
    ],
  );
}
