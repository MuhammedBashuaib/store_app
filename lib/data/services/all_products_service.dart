import 'package:store_app/helper/api.dart';
import 'package:store_app/helper/const.dart';
import 'package:store_app/data/models/product_model.dart';

class AllProductsScrevice {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(
      url: ServicesInformation.baseUrl +
          ServicesInformation.allProductsGetAndPost,
      token: null,
    );

    List<ProductModel> products = [];
    for (int i = 0; i < data.length; i++) {
      products.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return products;
  }
}
