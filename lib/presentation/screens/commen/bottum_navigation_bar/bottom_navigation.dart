import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/bottam_navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

BlocBuilder<BottamNavigationCubit, BottamNavigationState> bottomNavigation() {
    return BlocBuilder<BottamNavigationCubit, BottamNavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
            // color: AppColors.greenColor,
            // activeColor: AppColors.greenColor,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add Device',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_settings_outlined),
                label: 'Service',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'User',
              ),
            ],
            // selectedItemColor: Colors.amber[800],
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            showUnselectedLabels: true,
            unselectedItemColor: AppColors.greenColor,
            selectedItemColor: AppColors.ligthBlue,
            currentIndex: state.navigationOrder,
            elevation: 15,
            onTap: (int index) {
              BlocProvider.of<BottamNavigationCubit>(context).setoder(index);
            });
      },
    );
  }

