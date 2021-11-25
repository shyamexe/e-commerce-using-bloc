import 'package:e_commerce/core/constants/app_icons.dart';
import 'package:e_commerce/logic/cubit/selected_product_cubit.dart';
import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:e_commerce/models/owned_product.dart';
import 'package:e_commerce/presentation/screens/service_screen/widgets/components/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/service_tile.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ownedProducts.length,
      itemBuilder: (context, index) => ServiceTile(
        ownedProducts: ownedProducts[index],
        press: () {
          BlocProvider.of<ServiceselectionCubit>(context).singleupdate();
          BlocProvider.of<SelectedProductCubit>(context).setItem(index);
        }
        ),
      
    );
  }
}
