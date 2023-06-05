import 'package:ohaomob/bloc/models/Product_model.dart';

abstract class ProductState {}

class ProductLoadingState extends ProductState {}

class ProductErrorState extends ProductState {
  final String message;
  ProductErrorState(this.message);
}

class ProductLoadedState extends ProductState {
  final ProductModel model;
  ProductLoadedState(this.model);
}
