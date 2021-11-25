import 'package:bloc/bloc.dart';
import 'package:e_commerce/logic/cubit/serviceselection_cubit.dart';
import 'package:equatable/equatable.dart';

part 'bottam_navigation_state.dart';

class BottamNavigationCubit extends Cubit<BottamNavigationState> {
  ServiceselectionCubit serviceselectionCubit;
  BottamNavigationCubit(this.serviceselectionCubit)
      : super(BottamNavigationState(
          navigationOrder: 2, //currentSdcreen: 0,
        ));

  void setoder(int value) {
    
    emit(BottamNavigationState(navigationOrder: value,));
  }
}
