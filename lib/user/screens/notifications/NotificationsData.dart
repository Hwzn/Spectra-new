part of 'NotificationsImports.dart';

class NotificationsData {
  // bloc
  final GenericBloc<List<NotificationsModel>> notificationsBloc = GenericBloc([]);

  fetchData(BuildContext context) async {
    var data = await DoctorRepository(context).getNotifications();
    notificationsBloc.onUpdateData(data);
  }

}