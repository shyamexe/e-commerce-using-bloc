import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'serviceselection_state.dart';

class ServiceselectionCubit extends Cubit<ServiceselectionState> {
  ServiceselectionCubit() : super(ServiceselectionInitial());
}
