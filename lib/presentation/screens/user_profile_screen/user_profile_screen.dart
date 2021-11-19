import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/presentation/screens/user_profile_screen/widgets/app_avatar.dart';
import 'package:e_commerce/presentation/screens/user_profile_screen/widgets/profile_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_tile.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _switchValue = true;
    return Scaffold(
      appBar: ProfileAppbar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        physics: BouncingScrollPhysics(),
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: AppAvatar(),
          ),
          const Center(
            child: Text('Shyamjith',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                )),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Edit Profile',
            ),
          ),
          Card(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text('Settings',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkBlueColor,
                        )),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('Notification',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.darkBlueColor,
                          )),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: CupertinoSwitch(
                        value: _switchValue,
                        onChanged: (_) {},
                      ),
                    )
                  ],
                ),
                Divider(thickness: 1,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('Dark Mode',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.darkBlueColor,
                          )),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: CupertinoSwitch(
                        value: !_switchValue,
                        onChanged: (_) {},
                      ),
                    )
                  ],
                ),
                Divider(thickness: 1,),
                ProfileTile(settingsTitle: 'Bank Account',),
                Divider(thickness: 1,),
                ProfileTile(settingsTitle: 'Orders',),
                Divider(thickness: 1,),
                ProfileTile(settingsTitle: 'Card And Wallets',),
                Divider(thickness: 1,),
                ProfileTile(settingsTitle: 'Contact Us',),
                Divider(thickness: 1,),
                ProfileTile(settingsTitle: 'About',),
                Divider(thickness: 1,),
                ProfileTile(settingsTitle: 'Logout',),
              ],
            ),
          )
        ],
      ),
    );
  }
}

