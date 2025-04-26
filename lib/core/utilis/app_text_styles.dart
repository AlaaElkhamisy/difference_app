import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static final mainTextStyle = TextStyle(
      fontSize: 24.sp,
      color: Colors.white,
      fontFamily: "29lt-bukra",
      fontWeight: FontWeight.w700,
      shadows: [
        BoxShadow(
            blurRadius: 0.r,
            spreadRadius: 0.r,
            offset: Offset(0, 1),
            color: Colors.black),
        BoxShadow(
            blurRadius: 2.45.r,
            spreadRadius: 0.r,
            offset: Offset(0, 0.5),
            color: Colors.black.withOpacity(0.80))
      ]);
  static final wrongCountTextStyle = TextStyle(
      fontSize: 10,
      color: Colors.white,
      fontFamily: "29lt-bukra",
      fontWeight: FontWeight.w700,
      shadows: [
        BoxShadow(
            blurRadius: 0,
            spreadRadius: 0,
            offset: Offset(0, 0.5),
            color: Colors.black),
        BoxShadow(
            blurRadius: 1,
            spreadRadius: 0,
            offset: Offset(0, 0.7),
            color: Colors.black.withOpacity(0.80))
      ]);
  static final subTextStyle = TextStyle(
      fontSize: 24,
      color: Colors.white,
      fontFamily: "Oswald",
      fontWeight: FontWeight.w700,
      shadows: [
        BoxShadow(
            blurRadius: 0,
            spreadRadius: 0,
            offset: Offset(3.01, 3.01),
            color: Colors.black.withOpacity(0.44))
      ]);
  static final nameTextStyle = TextStyle(
      fontFamily: "29lt-bukra",
      color: Colors.white,
      fontSize: 14.82,
      fontWeight: FontWeight.w700);
}
