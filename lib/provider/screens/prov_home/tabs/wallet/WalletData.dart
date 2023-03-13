part of 'WalletImports.dart';

class WalletData {
  final GenericBloc<WalletModel?> walletBloc = GenericBloc(null);

  fetchData(BuildContext context) async {
    var data = await DoctorRepository(context).getWallet();
    walletBloc.onUpdateData(data);
  }

}