import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

InputDecoration inputDecorationRecipe({String? labelTextName, String? hintTextName}) {
  return InputDecoration(
    contentPadding: EdgeInsets.zero,
    labelText: labelTextName,
    hintText: hintTextName,
    labelStyle: secondaryTextStyle(),
    hintStyle: secondaryTextStyle(),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: viewLineColor),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: viewLineColor),
    ),
  );
}