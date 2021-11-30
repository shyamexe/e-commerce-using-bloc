
import 'package:e_commerce/logic/cubit/sales_cubit.dart';
import 'package:e_commerce/logic/cubit/selected_product_cubit.dart';

import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'core/constants/strings.dart';
import 'core/themes/app_theme.dart';
import 'logic/cubit/bottam_navigation_cubit.dart';
import 'logic/debug/app_bloc_observer.dart';
import 'presentation/router/app_router.dart';
void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
    
      providers: [
      
        BlocProvider<ServiceselectionCubit>(
          create: (context)=>
              ServiceselectionCubit(),
        ),

        BlocProvider<SalesCubit>(
          create: (context)=>
              SalesCubit(),),

        BlocProvider<BottamNavigationCubit>(
          create: (context)=>
              BottamNavigationCubit(BlocProvider.of<ServiceselectionCubit>(context)),
        ),
        BlocProvider<SelectedProductCubit>(
         create: (context)=>
            SelectedProductCubit(),
         ),
      ],

      child: ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            
            title: Strings.appTitle,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            debugShowCheckedModeBanner: false,
            initialRoute: AppRouter.home,
            onGenerateRoute: AppRouter.onGenerateRoute,
          );
        }
      ),
    );
  }
}
