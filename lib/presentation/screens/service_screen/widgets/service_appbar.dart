import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar serviceAppbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.whiteColor,
    title: Text(
      'SERVICES',
      style: TextStyle(
        color: AppColors.darkBlueColor,
      ),
    ),
    leading: IconButton(
        color: AppColors.greenColor,
        onPressed: () {
          //  return Navigator.of(context).pop();
        },
        icon: Icon(Icons.menu_rounded)),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppIcons.barCodeIcon,
          color: AppColors.greenColor,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          AppIcons.searchIcon,
          color: AppColors.greenColor,
        ),
      ),
    ],
    bottom: PreferredSize(
      preferredSize: Size(double.infinity, 48),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 12),
        child: Row(
          children: <Widget>[
            Expanded(
              child: BlocBuilder<ServiceselectionCubit, ServiceselectionState>(
                builder: (context, state) {
                  return CupertinoSegmentedControl<int>(
              groupValue: state.pageValue,
              borderColor: AppColors.greenColor,
              selectedColor: AppColors.greenColor,
              pressedColor: AppColors.greenColor.withOpacity(.29),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              children: const {
                0: Text('Available Products'),
                1: Text('Service History'),
                2: Text('Open New Ticket'),
              },
              onValueChanged: (groupValue) {

                BlocProvider.of<ServiceselectionCubit>(context).update(groupValue);
              },
            );
                },
              ),
            )
          ],
        ),
      ),
    ),
  );
}
