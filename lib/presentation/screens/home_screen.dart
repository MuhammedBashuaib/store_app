import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/data/models/product_model.dart';
import 'package:store_app/data/services/all_products_service.dart';

import 'package:store_app/helper/const.dart';
import 'package:store_app/presentation/widgets/product_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.kWhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "New Trends",
          style: TextStyle(
            color: MyColors.kBlack54,
            fontSize: fSize * 1.2,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.cartPlus,
              color: MyColors.kBlack,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: widthScreen * .03,
          right: widthScreen * .03,
          top: heightScreen * .06,
        ),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsScrevice().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                itemCount: products.length,
                clipBehavior: Clip.none,
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.17,
                  // childAspectRatio: heightScreen / 700,
                  crossAxisSpacing: widthScreen * .03,
                  mainAxisSpacing: heightScreen * .08,
                ),
                itemBuilder: (context, index) {
                  return ProductCardWidget(
                    product: products[index],
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(
                        MyRoutesScreen.updateProductScreen,
                        arguments: products[index],
                      );
                    },
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
