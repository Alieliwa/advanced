import 'dart:ui';

import 'package:advanced/presentation/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontsize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontsize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: FontsConstants.fontFamily,
  );
}

//Regular
TextStyle getRegularStyle(
    {double fontsize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontsize, FontWightManager.regular, color);
}

//meduim
TextStyle getMeduimStyle(
    {double fontsize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontsize, FontWightManager.meduim, color);
}

//light
TextStyle getLightStyle(
    {double fontsize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontsize, FontWightManager.light, color);
}

//bold
TextStyle getBoldStyle({double fontsize = FontSize.s20, required Color color}) {
  return _getTextStyle(fontsize, FontWightManager.bold, color);
}

//semiBold
TextStyle getSemiBoldStyle(
    {double fontsize = FontSize.s18, required Color color}) {
  return _getTextStyle(fontsize, FontWightManager.semiBold, color);


}


//input decoration theme


