import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/core/constants/strings.dart';
import 'package:e_commerce/core/widgets/custom_listview.dart';
import 'package:e_commerce/core/widgets/reuse_card_conatiner.dart';
import 'package:e_commerce/logic/cubit/sales_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/data/models/items.dart';

Widget salesBody(BuildContext context) {
  DisplayItems items = DisplayItems();
  String textVal = "dfgfxg";
  TextEditingController testtext = TextEditingController();
  return SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<SalesCubit, SalesState>(
            builder: (context, state) {
              return Container(
                child: Center(
                    child: Text(
                  "$textVal".toUpperCase(),
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                )),
                height: 140,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.circular(15),
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 80,
            width: double.infinity,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: items.item.length,
              itemBuilder: (context, index) {
                return Row(

                  children: [
                    CustomListView(
                      productName: items.item[index].imageText,
                      image: items.item[index].image,
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                );
              },
              
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Exclusive Offer",
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.darkBlueColor,
                    fontWeight: FontWeight.bold),
              ),
              Text("See all",style: TextStyle(fontSize: 16,color: AppColors.ligthBlue),),
            ],
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                ReuseCardContainer(
                    image: AppImage.lapTo1,
                    headText: "Toshiba",
                    price: "Rs.32000",
                    mrp: "Rs.42000"),
                 SizedBox(
                  width: 10,
                ),
                ReuseCardContainer(

                    image: AppImage.lapTop2,
                    headText: "Samsung",
                    price: "Rs.38000",
                    mrp: "Rs.52000"),
                 SizedBox(
                  width: 10,
                ),
                ReuseCardContainer(
                    image: AppImage.printer1,
                    headText: "Espon",
                    price: "Rs.22000",
                    mrp: "Rs.32000"),
                 SizedBox(
                  width: 10,
                ),
                ReuseCardContainer(
                    image: AppImage.projector,
                    headText: "Ibell",
                    price: "Rs.12000",
                    mrp: "Rs.20000"),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
