import 'package:flutter/material.dart';
import 'home_body.dart';
import 'widget/home_page_appbar.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(context),
      body: SingleChildScrollView(
        child: HomeBody(),
      ),
    );
  }
}




