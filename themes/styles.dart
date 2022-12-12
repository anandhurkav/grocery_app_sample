import 'package:flutter/material.dart';

//text styles
TextStyle _getTextStyle(
  double fontsize,
  Color color,
  FontWeight fontWeight,
  double height

){
  return TextStyle(
    fontSize: fontsize,
    color: color,
    fontWeight: fontWeight,
    height: height,
  );
}
TextStyle getLightStyle({
  double fontSize=12,
  required Color color,
  double height = 1,
}){
  return _getTextStyle(
    fontSize, 
    color, 
    FontWeightManager.light, 
    height);
} 
TextStyle getMediumStyle({
  double fontSize=12,
  required Color color,
  double height=1
}){
  return _getTextStyle(fontSize,color,FontWeightManager.medium,height);
} 
TextStyle getSemiBoldStyle({
  double fontSize=12,
  required Color color,
  double height=1
}){
  return _getTextStyle(fontSize,color,FontWeightManager.semiBold ,height);
}
TextStyle getBoldStyle({
  double fontSize=12,
  required Color color,
  double height=1
}){
  return _getTextStyle(fontSize,color,FontWeightManager.bold,height);
}
TextStyle getRegularStyle({
  double fontSize=12,
  required Color color,
  double height=1
}){
  return _getTextStyle(fontSize,color,FontWeightManager.regular,height);
}
TextStyle getExtraBoldStyle({
  double fontSize=12,
  required Color color,
  double height=1
}){
  return _getTextStyle(fontSize,color,FontWeightManager.extraBold,height);
}

//fontweight manger
class FontWeightManager{
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;

}