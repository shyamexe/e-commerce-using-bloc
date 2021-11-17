import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar serviceAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        'SERVICES',
        style: TextStyle(
          color: AppColors.darkBlueColor,
        ),
      ),
      leading: IconButton(
        color: AppColors.darkBlueColor,
        onPressed: () {
        //  return Navigator.of(context).pop();
        },
        icon: Icon(Icons.menu_rounded)
        ),
      
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.barCodeIcon,
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