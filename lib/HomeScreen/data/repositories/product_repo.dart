import 'package:ohaomob/bloc/models/Product_model.dart';
import 'package:ohaomob/bloc/network/network_helper.dart';
import 'package:ohaomob/bloc/network/network_service.dart';

class ProductRepository {
  final String _baseUrl = "https://dummyjson.com/products?limit=2";

  Future<ProductModel> getProducts() async {
    final response = await NetworkService.sendRequest(
        requestType: RequestType.get, url: _baseUrl);

    return NetworkHelper.filterResponse(
        callBack: (json) => ProductModel.fromJson(json),
        response: response,
        onFailureCallBackWithMessage: (errorType, msg) =>
            throw Exception('An Error has happened. $errorType - $msg'));
  }
}
