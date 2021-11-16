import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/sales_cubit.dart';
import 'package:e_commerce/presentation/screens/sales_screen/widgets/sales_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController testtext = TextEditingController();
    String textVal = "Welcome";
    return Scaffold(
      appBar: salesAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            BlocBuilder<SalesCubit, SalesState>(
              builder: (context, state) {
                return Container(
                  child: Center(child: Text("$textVal".toUpperCase(),style: TextStyle(color: Colors.white,fontSize: 20),)),
                  height: 140,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(15),
                  ),
                );
              },
            ),
            TextFormField(
              controller: testtext,
            ),
            ElevatedButton(
              onPressed: () {
                textVal = testtext.text;
                BlocProvider.of<SalesCubit>(context).update(textVal);
              },
              child: Text("Test"),
            ),
          ]),
        ),
      ),
    );
  }
}
