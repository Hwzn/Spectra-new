import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingDialog {

  static showLoadingDialog() {
    EasyLoading.instance.maskColor = Colors.white.withOpacity(0.2);
    EasyLoading.instance.backgroundColor = Colors.grey;
    EasyLoading.show(
        maskType: EasyLoadingMaskType.clear,
        dismissOnTap: false,
        indicator: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: 100,
          child: SpinKitFadingCube(
            size: 40.0,
            color: MyColors.primary,
          ),
        ),
        status: "Loading");
  }

  static showLoadingView({Color? color}) {
    return Center(
      child: SpinKitFadingCube(
        color: color ?? MyColors.primary,
        size: 40.0,
      ),
    );
  }
}
