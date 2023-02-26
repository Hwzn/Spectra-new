import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hwzn_base/general/helper/configration/CustomButtonAnimation.dart';
import 'package:hwzn_base/general/helper/configration/DecorationUtils.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';

import '../constants/MyColors.dart';

class LoadingButton extends StatelessWidget {
  final GlobalKey<CustomButtonState> btnKey;
  final String title;
  final Function() onTap;
  final Color? textColor;
  final Color? color;
  final Color? borderColor;
  final double? borderRadius;
  final EdgeInsets? margin;
  final double? width;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Widget? child;

  LoadingButton({
    required this.title,
    required this.onTap,
    this.color,
    this.textColor,
    this.borderRadius,
    this.margin,
    this.borderColor,
    this.fontFamily,
    this.fontSize,
    this.width,
    required this.btnKey,
    this.child,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    Color border = color ?? DecorationUtils.primaryColor;
    return Container(
      margin:
          margin ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xff635971),
              Color(0xff957785),
            ]),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          CustomButtonAnimation(
            key: btnKey,
            onTap: onTap,
            width: width ?? MediaQuery.of(context).size.width,
            minWidth: 45,
            height: 50,
            color: Colors.transparent,
            elevation: 0,
            borderRadius: borderRadius ?? 20,
            borderSide: BorderSide(color: borderColor ?? border, width: 0),
            loader: Container(
              padding: const EdgeInsets.all(20),
              child: const SpinKitRotatingCircle(
                color: Colors.white,
                size: 30,
              ),
            ),
            child: child ??
                MyText(
                  title: title,
                  size: fontSize ?? 13,
                  color: textColor ?? MyColors.black,
                  fontFamily: fontFamily,
                  fontWeight: fontWeight ?? FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
