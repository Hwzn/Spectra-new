part of 'AccountImports.dart';

class AccountData {
  // blocs
  final GenericBloc<List<PetModel>> petsBloc = GenericBloc([]);

  // lists

  List<BuildSettingItem> settingList(context) {
    return [
      BuildSettingItem(
        icon: Icons.person_outline,
        title: tr(context, 'myAccount'),
        onTap: () => AutoRouter.of(context).push(ProfileRoute()),
      ),
      BuildSettingItem(
        icon: Icons.language,
        title: tr(context, 'language'),
        onTap: ()=> changeLang(context),
      ),
      BuildSettingItem(
        icon: MdiIcons.tooltipOutline,
        title: tr(context, 'faq'),
        onTap: () => AutoRouter.of(context).push(FAQRoute()),
      ),
      BuildSettingItem(
        icon: Icons.assignment_sharp,
        title: tr(context, 'terms'),
        onTap: () => AutoRouter.of(context).push(TermsRoute()),
      ),
      BuildSettingItem(icon: Icons.share, title: tr(context, 'shareApp')),
    ];
  }

  // methods
  fetchPets(BuildContext context) async {
    var data = await UserRepository(context).getPets();
    petsBloc.onUpdateData(data);
  }

  removePet(int index, int id,BuildContext context) async {
    await UserRepository(context).deletePet(id);
    petsBloc.state.data.removeAt(index);
    petsBloc.onUpdateData(petsBloc.state.data);
  }

  changeLang(BuildContext context) {
    // open bottom sheet
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return const BuildLangBottomSheet();
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
  }

  signOut(BuildContext context) {
    // open bottom sheet
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return const BuildSignOutSheet();
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
  }

}
