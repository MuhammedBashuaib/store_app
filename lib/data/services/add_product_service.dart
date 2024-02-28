import 'package:store_app/data/models/product_model.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/helper/const.dart';

class AddProductService {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().post(
      url: ServicesInformation.baseUrl +
          ServicesInformation.allProductsGetAndPost,
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
