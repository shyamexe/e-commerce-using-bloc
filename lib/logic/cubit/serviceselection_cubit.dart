import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'serviceselection_state.dart';

class ServiceselectionCubit extends Cubit<ServiceselectionState> {
  ServiceselectionCubit()
      : super(ServiceselectionState(
          pageValue: 0,
        ));
    
  void update() { 
    if(state.pageValue < 2){
    emit(
        ServiceselectionState(
          pageValue: state.pageValue + 1,
        ),
      );
    }
    // else{
    //   emit(
    //     ServiceselectionState(
    //       pageValue: state.pageValue,
    //     ),
    //   );
    // }
  }
}
