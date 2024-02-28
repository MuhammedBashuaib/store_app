import 'package:flutter/material.dart';
import 'package:store_app/data/models/product_model.dart';
import 'package:store_app/helper/const.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductModel product;
  final Function()? onTap;
  const ProductCardWidget({
    super.key,
    required this.product,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            // height: heightScreen * .23,
            // height: heightScreen * .16,
            // width: widthScreen * .4,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: MyColors.kGrey.withOpacity(.2),
                  spreadRadius: 0,
                  offset: const Offset(2, 1),
                ),
              ],
            ),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: widthScreen * .025,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      product.title.substring(0, 7),
                      style: TextStyle(
                        fontSize: fSize * 1.15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: heightScreen * .005,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${product.price}",
                          style: TextStyle(
                            fontSize: fSize * 1.1,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              size: heightScreen * .025,
                              color: MyColors.kRed,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: heightScreen * -.05,
            left: widthScreen * .16,
            child: Image.network(
              product.image,
              height: heightScreen * .14,
              width: widthScreen * .25,
            ),
          ),
        ],
      ),
    );
  }
}
