import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'myaccount_screen_dart_state.dart';

class MyaccountScreenDartCubit extends Cubit<MyaccountScreenDartState> {
  MyaccountScreenDartCubit() : super(MyaccountScreenDartInitial());
}
