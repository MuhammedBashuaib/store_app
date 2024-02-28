import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/data/models/product_model.dart';
import 'package:store_app/data/services/update_product_service.dart';
import 'package:store_app/helper/const.dart';
import 'package:store_app/presentation/widgets/custom_material_button.dart';
import 'package:store_app/presentation/widgets/custom_text_field.dart';

// ignore: must_be_immutable
class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  String? productName, description, image;
  String? price;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    bool isLoaded = false;
    return Scaffold(
      appBar: AppBar(),
      body: ModalProgressHUD(
        inAsyncCall: isLoaded,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: widthScreen * .02,
            vertical: heightScreen * .01,
          ),
          child: Column(
            children: [
              CustomTextField(
                hintText: "Product Name",
                enabledBorderColor: MyColors.kBlack,
                focusedBorderColor: MyColors.kBlack54,
                controller: controller,
                onChanged: (value) {
                  productName = value;
                },
              ),
              SizedBox(
                height: heightScreen * .01,
              ),
              CustomTextField(
                hintText: "Description",
                enabledBorderColor: MyColors.kBlack,
                focusedBorderColor: MyColors.kBlack54,
                controller: controller,
                onChanged: (value) {
                  description = value;
                },
              ),
              SizedBox(
                height: heightScreen * .01,
              ),
              CustomTextField(
                hintText: "Price",
                keyboardType: TextInputType.number,
                enabledBorderColor: MyColors.kBlack,
                focusedBorderColor: MyColors.kBlack54,
                controller: controller,
                onChanged: (value) {
                  price = value;
                },
              ),
              SizedBox(
                height: heightScreen * .01,
              ),
              CustomTextField(
                hintText: "Image",
                enabledBorderColor: MyColors.kBlack,
                focusedBorderColor: MyColors.kBlack54,
                controller: controller,
                onChanged: (value) {
                  image = value;
                },
              ),
              SizedBox(
                height: heightScreen * .03,
              ),
              CustomMaterialButton(
                text: "Update",
                onPressed: () async {
                  print("star");
                  isLoaded = true;
                  setState(() {});
                  print("isLoaded is $isLoaded");

                  try {
                    await updateProduct(product);
                    print("success");
                  } catch (e) {
                    print(e.toString());
                  }
                  isLoaded = false;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: productName == null ? product.title : productName!,
      price: price == null ? product.price : price!,
      description: description == null ? product.description : description!,
      image: image == null ? product.image : image!,
      category: product.category,
    );
  }
}
