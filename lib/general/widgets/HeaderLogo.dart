import 'package:flutter/material.dart';
import 'package:hwzn_base/res.dart';

class HeaderLogo extends StatelessWidget {
  final double? topPadding;

  const HeaderLogo({Key? key, this.topPadding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        top: topPadding ?? 0,
        right: 50,
        left: 50,
        bottom: 20,
      ),
      child: Image(
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.35,
        image: const AssetImage(Res.logo),
        fit: BoxFit.contain,
      ),
    );
  }
}
