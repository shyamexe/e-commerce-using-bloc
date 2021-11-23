import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:flutter/material.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 4),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(150)),
      padding: EdgeInsets.all(3),
      child: CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage(AppUser.user3),
      ),
    );
  }
}
