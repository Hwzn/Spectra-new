part of 'AccountImports.dart';

class AccountData {
  // blocs
  final GenericBloc<List<String>> petsBloc = GenericBloc([]);

  // list
  var petsList = [
    "0",
    "1",
    "2",
  ];

  List<BuildSettingItem> settingList(context) {
    return [
      BuildSettingItem(
        icon: Icons.person_outline,
        title: "My Account",
        onTap: () => AutoRouter.of(context).push(ProfileRoute()),
      ),
      const BuildSettingItem(icon: Icons.language, title: "Language"),
      const BuildSettingItem(icon: MdiIcons.tooltipOutline, title: "FAQ"),
      const BuildSettingItem(
          icon: Icons.assignment_sharp, title: "Terms & Conditions"),
      const BuildSettingItem(icon: Icons.share, title: "Share App"),
    ];
  }

  // methods
  fetchPets() {
    petsBloc.onUpdateData(petsList);
  }

  removePet(int index) {
    petsBloc.state.data.removeAt(index);
    petsBloc.onUpdateData(petsBloc.state.data);
  }
}
