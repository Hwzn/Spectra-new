import 'package:flutter/material.dart';
import 'package:hwzn_base/general/helper/configration/DecorationUtils.dart';

import 'MyText.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final Color? textColor;
  final Color? color;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  final double? width;
  final double? fontSize;
  final double? height;
  final double? elevation;
  final bool? disabled;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Widget? child;

  DefaultButton({
    required this.title,
    this.onTap,
    this.color,
    this.disabled,
    this.textColor,
    this.borderRadius,
    this.margin,
    this.borderColor,
    this.fontFamily,
    this.fontSize,
    this.width,
    this.height,
    this.fontWeight,
    this.elevation,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    Color border = color ?? DecorationUtils.primaryColor;
    return IgnorePointer(
      ignoring: disabled ?? false,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? 50,
        margin:
            margin ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: color,
          gradient: color == null ? const LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xff635971),
                Color(0xff957785),
              ]): null,
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
              side: BorderSide(
                color: borderColor ?? border,
                width: 1,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: elevation ?? 0,
          ),
          child: child?? MyText(
            title: title,
            size: fontSize ?? 14,
            color: textColor ?? Colors.white,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
