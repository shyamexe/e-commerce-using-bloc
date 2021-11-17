import 'package:e_commerce/logic/cubit/bottam_navigation_cubit.dart';
import 'package:e_commerce/presentation/screens/home_screen/home_page.dart';
import 'package:e_commerce/presentation/screens/sales_screen/sales_screen.dart';
import 'package:e_commerce/presentation/screens/service_screen/service_screen.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class BottumNavigationBar extends StatelessWidget {
  int selectedPage = 2;
  List<Widget> _pageOption = [
    
    ServiceScreen(),
    SalesScreen(),
    HomePage(),
    ServiceScreen(),
    ServiceScreen(),
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
            bottomNavigationBar: ConvexAppBar(
                color: Colors.green[200],
                backgroundColor: Colors.white,
                activeColor: Colors.green,
                items: const [
                  TabItem(icon: Icons.add, title: 'Add Device'),
                  TabItem(icon: Icons.shopping_bag_outlined, title: 'Shop'),
                  TabItem(icon: Icons.home_outlined, title: 'Home'),
                  TabItem(
                      icon: Icons.video_settings_outlined, title: 'Service'),
                  TabItem(icon: Icons.person_outline, title: 'User'),
                ],
                initialActiveIndex: state.navigationOrder,
                onTap: (int index) {

                  BlocProvider.of<BottamNavigationCubit>(context).setoder(index);

                }),
          );
        },
      ),
    );
  }
}
