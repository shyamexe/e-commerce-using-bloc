
import 'package:e_commerce/presentation/screens/sales_screen/widgets/sales_appbar.dart';
import 'package:e_commerce/presentation/screens/sales_screen/widgets/sales_body.dart';
import 'package:flutter/material.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: salesAppBar(context),
      body: salesBody(context),
    );
  }

 }
