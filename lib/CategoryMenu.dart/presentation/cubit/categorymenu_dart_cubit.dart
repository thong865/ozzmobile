import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'categorymenu_dart_state.dart';

class CategorymenuDartCubit extends Cubit<CategorymenuDartState> {
  CategorymenuDartCubit() : super(CategorymenuDartInitial());
}
