import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'qrscan_state.dart';

class QrscanCubit extends Cubit<QrscanState> {
  QrscanCubit() : super(QrscanInitial());
}
