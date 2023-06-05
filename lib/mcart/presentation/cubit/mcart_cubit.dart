import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'mcart_state.dart';

class McartCubit extends Cubit<McartState> {
  McartCubit() : super(McartInitial());
}
