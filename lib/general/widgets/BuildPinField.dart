import 'package:flutter/material.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BuildPinField extends StatelessWidget {
  final Function(String) onComplete;
  final EdgeInsetsGeometry? margin;

  const BuildPinField({
    Key? key,
    required this.onComplete, this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin:margin?? const EdgeInsets.symmetric(horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PinCodeTextField(
          length: 4,
          appContext: context,
          onChanged: (String value) {},
          backgroundColor: Colors.transparent,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(10),
              fieldHeight: 70,
              fieldWidth: 70,
              inactiveColor: MyColors.greyWhite,
              activeColor: MyColors.primary,
              selectedColor: MyColors.primary,
              selectedFillColor: MyColors.white,
              inactiveFillColor: MyColors.white,
              activeFillColor: MyColors.white,
              disabledColor: MyColors.black,
          ),
          animationDuration: const Duration(milliseconds: 300),
          enableActiveFill: true,
          onCompleted: onComplete,
        ),
      ),
    );
  }
}
