import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'singleproduct_state.dart';

class SingleproductCubit extends Cubit<SingleproductState> {
  SingleproductCubit() : super(SingleproductInitial());
}
