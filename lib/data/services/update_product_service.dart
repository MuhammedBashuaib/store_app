import 'package:store_app/data/models/product_model.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/helper/const.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required int id,
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: ServicesInformation.baseUrl +
          ServicesInformation.allProductsGetAndPost +
          id.toString(),
      body: {
        ProductDataPost.title: title,
        ProductDataPost.price: price,
        ProductDataPost.description: description,
        ProductDataPost.image: image,
        ProductDataPost.category: category,
      },
      token: null,
    );
    return ProductModel.fromJson(data);
  }
}
