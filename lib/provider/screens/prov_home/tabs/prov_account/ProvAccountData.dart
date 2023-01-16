part of 'ProvAccountImports.dart';

class ProvAccountData {
  // bloc
  final GenericBloc<String> hourRateCubit = GenericBloc('70');
  final GenericBloc<String> rescueCasesCubit = GenericBloc('30');

  // controllers
  final TextEditingController controller = TextEditingController();

  // lists
  List<BuildSettingItem> settingList(context) {
    return [
      const BuildSettingItem(icon: Icons.person_outline, title: "My Account"),
      const BuildSettingItem(icon: MdiIcons.bullseyeArrow, title: "plans"),
      const BuildSettingItem(icon: Icons.language, title: "Language"),
      BuildSettingItem(
        icon: MdiIcons.tooltipOutline,
        title: "FAQ",
        onTap: () => AutoRouter.of(context).push(FAQRoute()),
      ),
      BuildSettingItem(
        icon: Icons.assignment_sharp,
        title: "Terms & Conditions",
        onTap: () => AutoRouter.of(context).push(TermsRoute()),
      ),
      const BuildSettingItem(icon: Icons.share, title: "Share App"),
    ];
  }

  // methods
  editRate(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (_) {
        return BuildAccountBottomSheet(
          onSubmit: (){
            if(controller.text.isNotEmpty){
              hourRateCubit.onUpdateData(controller.text);
              controller.clear();
              Navigator.pop(context);
            }
          },
          title: "Hour Rate",
          controller: controller,
        );
      },
      constraints: const BoxConstraints(maxHeight: 250),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
    );
  }

  editCases(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (_) {
        return BuildAccountBottomSheet(
          onSubmit: (){
            if(controller.text.isNotEmpty){
              rescueCasesCubit.onUpdateData(controller.text);
              controller.clear();
              Navigator.pop(context);
            }
          },
          title: "Rescue Cases",
          controller: controller,
        );
      },
      constraints: const BoxConstraints(maxHeight: 250),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
    );
  }
}
