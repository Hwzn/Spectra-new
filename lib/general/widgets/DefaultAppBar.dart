import 'package:auto_route/auto_route.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final double? size;
  final bool showLeading;
  final Widget? child;

  const DefaultAppBar({
    Key? key,
    required this.title,
    this.actions = const [],
    this.leading,
    this.size,
    this.showLeading = true,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xff635971),
              Color(0xff957785),
            ]),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: AppBar(
        leading: Visibility(
          visible: showLeading,
          child: leading ??
              InkWell(
                onTap: () => AutoRouter.of(context).pop(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: MyColors.white,
                  size: 18,
                ),
              ),
        ),
        leadingWidth: showLeading == true ? 55 : 10,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: child ?? Container(
          margin: const EdgeInsets.only(top: 8),
          child: MyText(
            title: title,
            size: 16,
            color: MyColors.white,
          ),
        ),
        centerTitle: false,
        actions: actions,
        titleTextStyle: GoogleFonts.tajawal(
            color: const Color(0xffffffff),
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 19.0),
        toolbarHeight: 70,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size ?? 70);
}
