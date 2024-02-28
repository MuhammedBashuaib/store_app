import 'package:store_app/helper/api.dart';
import 'package:store_app/helper/const.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(
      url: ServicesInformation.baseUrl + ServicesInformation.allCategories,
      token: null,
    );
    return data;
  }
}
