import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'serviceselection_state.dart';

class ServiceselectionCubit extends Cubit<ServiceselectionState> {
  ServiceselectionCubit()
      : super(ServiceselectionState(
          pageValue: 0,
        ));
    
  void update() => emit(
        ServiceselectionState(
          pageValue: state.pageValue + 1,
        ),
      );
}
