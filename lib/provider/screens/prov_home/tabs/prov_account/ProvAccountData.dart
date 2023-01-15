part of 'ProvAccountImports.dart';

class ProvAccountData {
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
  editRate() {}
}
