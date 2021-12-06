

import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/selected_product_cubit.dart';
import 'package:e_commerce/models/owned_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewTicket extends StatelessWidget {
  const NewTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedProductCubit, SelectedProductState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8.w),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Selected Product',
                  style: TextStyle(
                      color: AppColors.greenColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              _productDetails(state),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 5),
                child: Text(
                  'Complaint',
                  style: TextStyle(
                      color: AppColors.greenColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.greenColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: TextStyle(color: AppColors.darkBlueColor),
                  keyboardType: TextInputType.multiline,
                  // maxLines: null,
                  minLines: 1,
                  maxLines: 5,
                ),
              ),
              const SizedBox(height: 60),
              RaisedButton(
                color: AppColors.greenColor,
                onPressed: () {
                  showAlertDialogBox(context,state);
                },
                child: const Text(
                  'Generate Ticket',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Container _productDetails(SelectedProductState state) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greenColor.withOpacity(.15),
        border: Border.all(
          color: AppColors.greenColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                ownedProducts[state.selectdItem].image,
                width: 30.w,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    ownedProducts[state.selectdItem].title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.darkBlueColor,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.greenColor.withOpacity(.29),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  margin: const EdgeInsets.only(right: 8, left: 10),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Device is out of Warranty',
                        style: TextStyle(color: AppColors.redColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showAlertDialogBox(BuildContext ctx,state) {
    // set up the buttons
    // Widget okayButton =
    //   Container(
    //     child: Text('Okay'),
    //   );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 20),
        child: SvgPicture.asset('assets/icons/alert.svg'),
      ),
      content: SizedBox(
        height: 250,
        child: Column(
          children: [
            Text(
              'Complaint Registerd Successfully Completed !',textAlign: TextAlign.center,
              style: TextStyle(

                  color: AppColors.greenColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Text(
              'Ticket Number : EQ/09/21/1563',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.darkGreyColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              ownedProducts[state.selectdItem].title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.darkGreyColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Complain : HDD not detect',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.darkGreyColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Text(
              'Our technician contact you with in 30 minutes',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.greenColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
             SizedBox(height: 20,),
          FlatButton(
            color: AppColors.greenColor,
            onPressed: () { 
               Navigator.of(ctx, rootNavigator: true)
                  .pop(); 
             }, 
             child: Text(
              'Okay',textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            
          )
          ],
        ),
      ),
      // actions: [
      //   okayButton,
      // ],
    );

    // show the dialog
    showDialog(
      context: ctx,
      builder: (BuildContext ctx) {
        return alert;
      },
    );
  }
}
