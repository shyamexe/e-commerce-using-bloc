import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/presentation/screens/user_profile_screen/widgets/app_avatar.dart';
import 'package:e_commerce/presentation/screens/user_profile_screen/widgets/profile_app_bar.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppbar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: AppAvatar(),
          ),
          Text('Shyamjith',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              )),
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit Profile',
            ),
          )
        ],
      ),
    );
  }
}
