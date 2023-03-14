part of 'NotificationsImports.dart';

class NotificationsData {
  // bloc
  final GenericBloc<List<NotificationsModel>> notificationsBloc = GenericBloc([]);

  fetchData(BuildContext context) async {
    var data = await DoctorRepository(context).getNotifications();
    notificationsBloc.onUpdateData(data);
  }

  deleteItem({
    required BuildContext context,
    required String id,
    required int index,
  }) async {
    await LoadingDialog.showLoadingDialog();
    var data = await DoctorRepository(context).deleteNotification(id);
    if (data) {
      notificationsBloc.state.data.removeAt(index);
      notificationsBloc.onUpdateData(notificationsBloc.state.data);
    }
    EasyLoading.dismiss();
  }

  deleteAll(BuildContext context) async {
    await LoadingDialog.showLoadingDialog();
    var data = await DoctorRepository(context).deleteAllNotifications();
    if (data) {
      notificationsBloc.onUpdateData([]);
    }
    EasyLoading.dismiss();
  }

}