import 'package:bloc/bloc.dart';

part 'serviceselection_state.dart';

class ServiceselectionCubit extends Cubit<ServiceselectionState> {
  ServiceselectionCubit()
      : super(ServiceselectionState(
          pageValue: 0,
        ));
    
  void singleupdate(int val) { 
    if(state.pageValue < 2){
    emit(
        ServiceselectionState(
          pageValue: state.pageValue + 1,
        ),
      );
    }
  }
  void update(int value) { 
    
    emit(
        ServiceselectionState(
          pageValue: value,
        ),
      );
  }
}
