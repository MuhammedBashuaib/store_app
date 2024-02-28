import 'package:flutter/material.dart';
import 'package:store_app/helper/const.dart';

class CustomMaterialButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color buttonColor;
  final Color textColor;
  const CustomMaterialButton({
    super.key,
    this.onPressed,
    required this.text,
    this.buttonColor = MyColors.kBlue,
    this.textColor = MyColors.kWhite,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(
        horizontal: widthScreen * .39,
        vertical: heightScreen * .015,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          widthScreen * .03,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fSize * 1.1,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}
