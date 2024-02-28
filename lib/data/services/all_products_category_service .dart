// ignore_for_file: file_names

import 'package:store_app/helper/api.dart';
import 'package:store_app/helper/const.dart';
import 'package:store_app/data/models/product_model.dart';

class AllProductsCategoryService {
  Future<List<ProductModel>> getAllProductsCategory(
      {required String categoryName}) async {
    List<dynamic> data = await Api().get(
      url: ServicesInformation.baseUrl +
          ServicesInformation.allProductsGetAndPost +
          ServicesInformation.categoryData +
          categoryName,
      token: null,
    );

    List<ProductModel> productsCategory = [];
    for (int i = 0; i < data.length; i++) {
      productsCategory.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsCategory;
  }
}
