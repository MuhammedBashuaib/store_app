import 'package:flutter/material.dart';

//Screen coordinates and the default size of the font
//////////////////////////////////////////////////////////////
double widthScreen = 0;
double heightScreen = 0;
double fSize = 0;

initializeHWFSize(BuildContext context) {
  widthScreen = MediaQuery.of(context).size.width;
  heightScreen = MediaQuery.of(context).size.height;
  fSize = widthScreen / 25;
}
//////////////////////////////////////////////////////////////

//Screen coordinates and the default size of the font
//////////////////////////////////////////////////////////////
class MyColors {
  static const Color kWhite = Colors.white;
  static const Color kGrey = Colors.grey;
  static const Color kBlack54 = Colors.black54;
  static const Color kBlack = Colors.black;
  static const Color kRed = Colors.red;
  static const Color kBlue = Colors.blue;
}
//////////////////////////////////////////////////////////////

//Screen routes
/////////////////////////////////////////////////////////////
class MyRoutesScreen {
  static const String homeScreen = "/";
  static const String updateProductScreen = "updateProductScreen";
}

//const api information
/////////////////////////////////////////////////////////////
class ServicesInformation {
  static const String baseUrl = "https://fakestoreapi.com/";
  static const String allProductsGetAndPost = "products/";
  static const String allCategories = "categories/";
  static const String categoryData = "category/";
}

// ignore: camel_case_types
class ProductDataPost {
  static const String title = "title";
  static const String price = "price";
  static const String description = "description";
  static const String image = "image";
  static const String category = "category";
}
