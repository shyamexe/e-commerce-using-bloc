import 'package:flutter/material.dart';

import 'package:e_commerce/core/constants/strings.dart';

class ProfileTile extends StatelessWidget {
  String settingsTitle;
  ProfileTile({
    Key? key,
    required this.settingsTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(settingsTitle,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.darkBlueColor,
              )),
        ),
        Spacer(),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.darkBlueColor,
            ))
      ],
    );
  }
}
