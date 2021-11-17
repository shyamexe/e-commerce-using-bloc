
import 'package:e_commerce/logic/cubit/sales_cubit.dart';

import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constants/strings.dart';
import 'core/themes/app_theme.dart';
import 'logic/cubit/bottam_navigation_cubit.dart';
import 'logic/debug/app_bloc_observer.dart';
import 'presentation/router/app_router.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(App());
}

class App extends StatelessWidget {
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
              BottamNavigationCubit(),
        )
      ],
      child: MaterialApp(
        title: Strings.appTitle,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
       
        initialRoute: AppRouter.test,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
