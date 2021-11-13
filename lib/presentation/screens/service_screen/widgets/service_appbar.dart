import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar serviceAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        'SERVICES',
        style: TextStyle(
          color: Colors.indigo[900],
        ),
      ),
      leading: IconButton(
        onPressed: () {
         return Navigator.of(context).pop();
        },
        icon: SvgPicture.asset(
          AppIcons.backArrow,
          color: Colors.indigo,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.barCodeIcon,
            color: Colors.indigo,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppIcons.searchIcon,
            color: Colors.indigo,
          ),
        ),
      ],
    );
  }