part of 'ProvAccountImports.dart';

class ProvAccountData {
  // bloc
  final GenericBloc<String> hourRateCubit = GenericBloc('0');
  final GenericBloc<String> rescueCasesCubit = GenericBloc('0');

  // controllers
  final TextEditingController controller = TextEditingController();

  // lists
  List<AvailableDayModel> workingDays = [];

  List<BuildSettingItem> settingList(context) {
    return [
      BuildSettingItem(
        icon: Icons.person_outline,
        title: "My Account",
        onTap: () => AutoRouter.of(context).push(ProvProfileRoute()),
      ),
      BuildSettingItem(
        icon: Icons.watch_later_outlined,
        title: "Working Times",
        onTap: () => AutoRouter.of(context)
            .push(WorkingTimesRoute(daysList: workingDays)),
      ),
      const BuildSettingItem(icon: MdiIcons.bullseyeArrow, title: "Plans"),
      BuildSettingItem(
        icon: Icons.language,
        title: "Language",
        onTap: () => changeLang(context),
      ),
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
  getWorkingDays(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    workingDays = user.availableTimes;
    hourRateCubit.onUpdateData(user.sessionPrice);
    rescueCasesCubit.onUpdateData(user.rescuePrice);
  }

  editRate(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (_) {
        return BuildAccountBottomSheet(
          onSubmit: () {
            if (controller.text.isNotEmpty) {
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
          onSubmit: () {
            if (controller.text.isNotEmpty) {
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
