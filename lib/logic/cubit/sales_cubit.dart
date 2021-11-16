import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sales_state.dart';

class SalesCubit extends Cubit<SalesState> {
  SalesCubit() : super(SalesState(pageVal: "welcome"));
  void update(String val){
    emit(SalesState(pageVal: val));
  }
}
