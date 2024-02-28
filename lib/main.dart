import 'package:flutter/material.dart';
import 'package:store_app/helper/const.dart';
import 'package:store_app/presentation/screens/home_screen.dart';
import 'package:store_app/presentation/screens/update_product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeHWFSize(context);

    return MaterialApp(
      initialRoute: MyRoutesScreen.homeScreen,
      routes: {
        MyRoutesScreen.homeScreen: (context) => const HomeScreen(),
        MyRoutesScreen.updateProductScreen: (context) =>
            const UpdateProductScreen(),
      },
    );
  }
}
