import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/bottam_navigation_cubit.dart';
import 'package:e_commerce/presentation/screens/add_device/add_device.dart';
import 'package:e_commerce/presentation/screens/home_screen/home_page.dart';
import 'package:e_commerce/presentation/screens/sales_screen/sales_screen.dart';
import 'package:e_commerce/presentation/screens/service_screen/service_screen.dart';
import 'package:e_commerce/presentation/screens/service_screen/widgets/components/product_details.dart';
import 'package:e_commerce/presentation/screens/user_profile_screen/user_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottumNavigationBar extends StatelessWidget {
  int selectedPage = 2;
  final List<Widget> _pageOption = [
    const AddDevice(),
    const SalesScreen(),
    const HomePage(),
    const ServiceScreen(),
    const UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocBuilder<BottamNavigationCubit, BottamNavigationState>(
          builder: (context, state) {
            return Scaffold(
              body: _pageOption[state.navigationOrder],
              bottomNavigationBar: BottomNavigationBar(
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
                    BlocProvider.of<BottamNavigationCubit>(context)
                        .setoder(index);
                  }),
            );
          },
        ));
  }
}
