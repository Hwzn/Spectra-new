import '../../general/packages/generic_bloc/generic_cubit.dart';

class FilterTypesModel {
  String ascTitle;
  int ascValue;
  String descTitle;
  int descValue;
  final GenericBloc<int> blocName;

  FilterTypesModel({
    required this.ascTitle,
    required this.ascValue,
    required this.descTitle,
    required this.descValue,
    required this.blocName,
  });
}
