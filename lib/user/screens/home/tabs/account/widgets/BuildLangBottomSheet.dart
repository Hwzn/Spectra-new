part of 'AccountWidgetsImports.dart';

class BuildLangBottomSheet extends StatelessWidget {
  const BuildLangBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lang = context.watch<LangCubit>().state.locale.languageCode;
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 15, left: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyText(
            title: tr(context, 'changeLang'),
            color: MyColors.black,
            size: 16,
          ),
          DefaultButton(
            title: lang == "ar" ? "English" : "العربية",
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            onTap: () {
              Utils.changeLanguage(lang == "ar" ? "en" : "ar", context);
              AutoRouter.of(context).pop();
            },
          ),
          DefaultButton(
            title: tr(context, 'goBack'),
            onTap: () => AutoRouter.of(context).pop(),
            margin: const EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 30,
            ),
            color: MyColors.bg,
            textColor: MyColors.grey,
          ),
        ],
      ),
    );
  }
}
