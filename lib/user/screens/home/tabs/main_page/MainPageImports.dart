import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/constants/modals/LoadingDialog.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/provider/screens/session_call/SessionCallImports.dart';
import 'package:hwzn_base/user/models/home_model.dart';
import 'package:hwzn_base/user/resources/UserRepositoryImports.dart';
import 'package:hwzn_base/user/screens/home/tabs/main_page/widgets/MainWidgetsImports.dart';

import '../../../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../../../general/packages/localization/Localizations.dart';
import '../../../../models/FilterTypesModel.dart';
import '../../../../models/toJson/AddFilterModel.dart';

part 'MainPage.dart';
part 'MainPageData.dart';