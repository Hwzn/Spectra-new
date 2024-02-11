import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hwzn_base/general/blocks/user_cubit/user_cubit.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/provider/resources/DoctorRepositoryImports.dart';
import 'package:hwzn_base/provider/screens/prov_home/tabs/prov_account/widgets/ProvAccountWidgetsImports.dart';
import 'package:hwzn_base/provider/screens/prov_profile/ProvProfileImports.dart';
import 'package:hwzn_base/provider/screens/working_times/WorkingTimesImports.dart';
import 'package:hwzn_base/user/models/available_day_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../general/helper/dio/utils/GlobalState.dart';
import '../../../../../general/helper/storage/Storage.dart';
import '../../../../../general/models/UserModel.dart';
import '../../../../../general/packages/localization/Localizations.dart';
import '../../../../../general/utilities/routers/RouterImports.gr.dart';
import '../../../../../general/widgets/DefaultAppBar.dart';
import '../../../../../general/widgets/MyText.dart';
import '../../../../../user/screens/home/tabs/account/widgets/AccountWidgetsImports.dart';

part 'ProvAccount.dart';
part 'ProvAccountData.dart';