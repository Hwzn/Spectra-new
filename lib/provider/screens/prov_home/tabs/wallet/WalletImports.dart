import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/provider/resources/DoctorRepositoryImports.dart';
import 'package:hwzn_base/provider/screens/prov_home/tabs/wallet/widgets/WalletWidgetsImports.dart';
import 'package:hwzn_base/provider/widgets/DefaultContainer.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../general/packages/localization/Localizations.dart';
import '../../../../../general/widgets/DefaultAppBar.dart';
import '../../../../../general/widgets/MyText.dart';
import '../../../../models/wallet_model.dart';

part 'Wallet.dart';
part 'WalletData.dart';