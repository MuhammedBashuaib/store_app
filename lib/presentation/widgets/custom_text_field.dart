import 'package:flutter/material.dart';

import 'package:store_app/helper/const.dart';

class CustomTextField extends StatelessWidget {
  final Function(String value)? onChanged;
  final TextEditingController controller;
  final String hintText;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    required this.controller,
    required this.hintText,
    required this.enabledBorderColor,
    required this.focusedBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: fSize * 1.1,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widthScreen * .03),
            borderSide: const BorderSide(
                // color: MyColors.myDarkBlue,
                ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widthScreen * .03),
            borderSide: BorderSide(
              color: enabledBorderColor,
              width: 2.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widthScreen * .03),
              borderSide: BorderSide(
                color: focusedBorderColor,
                width: 2.5,
              ))),
    );
  }
}
