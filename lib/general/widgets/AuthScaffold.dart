import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:hwzn_base/general/widgets/AuthHeaderText.dart';
import 'package:hwzn_base/general/widgets/HeaderLogo.dart';

class AuthScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final String? title;
  final bool showTitle;
  final bool showLogo;
  final double? logoTopPadding;

  const AuthScaffold({
    Key? key,
    required this.body,
    this.appBar,
    this.title,
    this.showTitle = true,
    this.showLogo = true,
    this.logoTopPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: appBar,
      body: ListView(
        children: [
          Visibility(
              visible: showLogo, child: HeaderLogo(topPadding: logoTopPadding)),
          Visibility(
              visible: showTitle, child: AuthHeaderText(title: title ?? '')),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15), child: body),
        ],
      ),
    );
  }
}
