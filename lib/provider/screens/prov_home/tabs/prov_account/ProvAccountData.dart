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
        title: tr(context, 'myAccount'),
        onTap: () => AutoRouter.of(context).push(ProvProfileRoute()),
      ),
      BuildSettingItem(
        icon: Icons.watch_later_outlined,
        title: tr(context, 'workingTimes'),
        onTap: () => AutoRouter.of(context)
            .push(WorkingTimesRoute(daysList: workingDays)),
      ),
      BuildSettingItem(
        icon: MdiIcons.bullseyeArrow,
        title: tr(context, 'plans'),
      ),
      BuildSettingItem(
        icon: Icons.language,
        title: tr(context, 'language'),
        onTap: () => changeLang(context),
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
  getWorkingDays(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    workingDays = user.availableTimes;
    hourRateCubit.onUpdateData(user.sessionPrice ?? '0');
    rescueCasesCubit.onUpdateData(user.rescuePrice ?? '0');
  }

  editRate(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (_) {
        return BuildAccountBottomSheet(
          onSubmit: () async {
            if (controller.text.isNotEmpty) {
              LoadingDialog.showLoadingDialog();
              var data = await DoctorRepository(context)
                  .updatePrice("session_price", controller.text);
              if (data) {
                hourRateCubit.onUpdateData(controller.text);
                saveData(context);
                controller.clear();
                Navigator.pop(context);
              }
              EasyLoading.dismiss();
            }
          },
          title: tr(context, 'hourRate'),
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
          onSubmit: () async {
            if (controller.text.isNotEmpty) {
              LoadingDialog.showLoadingDialog();
              var data = await DoctorRepository(context)
                  .updatePrice("rescue_price", controller.text);
              if (data) {
                rescueCasesCubit.onUpdateData(controller.text);
                saveData(context);
                controller.clear();
                Navigator.pop(context);
              }
              EasyLoading.dismiss();
            }
          },
          title: tr(context, 'rescueCases'),
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

  saveData(BuildContext context) {
    UserModel? user = context.read<UserCubit>().state.model;
    user.rescuePrice = rescueCasesCubit.state.data;
    user.sessionPrice = hourRateCubit.state.data;
    Storage.saveUserData(user);
    context.read<UserCubit>().onUpdateUserData(user);
  }
}
