import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'selected_product_state.dart';

class SelectedProductCubit extends Cubit<SelectedProductState> {
  SelectedProductCubit() : super(SelectedProductState(selectdItem: 0));
  void setItem(int value){
    emit(SelectedProductState(selectdItem: value));
  }
}
