import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/logic/cubit/selected_product_cubit.dart';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/models/owned_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewTicket extends StatelessWidget {
  const NewTicket({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext ctx) {
    
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
              SizedBox(height: 60,),
              RaisedButton(
                        color: AppColors.greenColor,
                        onPressed: () {
                         
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
}
