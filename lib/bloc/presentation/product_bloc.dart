import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ohaomob/HomeScreen/data/repositories/product_repo.dart';
import 'package:ohaomob/bloc/presentation/product_bloc_event.dart';
import 'package:ohaomob/bloc/presentation/product_bloc_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _repository;

  ProductBloc(this._repository) : super(ProductLoadingState()) {
    on<LoadProductEvent>((event, emit) async {
      emit(ProductLoadingState());
      try {
        final model = await _repository.getProducts();
        emit(ProductLoadedState(model));
      } catch (e) {
        emit(ProductErrorState(e.toString()));
      }
    });
  }
}
