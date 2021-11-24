import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/presentation/screens/add_device/widgets/device_app_bar.dart';
import 'package:flutter/material.dart';

class AddDevice extends StatelessWidget {
  const AddDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: deviceAppBar(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){},
              child: Text('USING CAMARA'),
            ),
             ElevatedButton(
              onPressed: (){},
              child: Text('BY SELECTING'),
            )
          ],
        ),
      ),
    );
  }
}
