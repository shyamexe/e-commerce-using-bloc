import 'package:e_commerce/presentation/screens/home_screen/home_screen.dart';
import 'package:e_commerce/presentation/screens/service_screen/service_screen.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPage = 2;
  List< Widget> _pageOption = [HomeScreen(title: 'title'), ServiceScreen(), ServiceScreen(),];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: _pageOption[selectedPage],
          bottomNavigationBar: ConvexAppBar(
            color: Colors.green[200],
              backgroundColor: Colors.white,
              activeColor: Colors.green,
              items: const [
                TabItem(icon: Icons.add, title: 'Add Device'),
                TabItem(icon: Icons.shopping_bag_outlined, title: 'Shop'),
                TabItem(icon: Icons.home_outlined, title: 'Home'),
                TabItem(icon: Icons.video_settings_outlined, title: 'Service'),
                TabItem(icon: Icons.person_outline, title: 'User'),
              ],
              initialActiveIndex: selectedPage,
              onTap: (int index){
                setState((){
                selectedPage = index;
              });
              }
          ),

      ),
    );
  }
}