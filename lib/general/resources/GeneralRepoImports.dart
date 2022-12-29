import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/blocks/setting_cubit/setting_cubit.dart';
import 'package:hwzn_base/general/constants/modals/LoadingDialog.dart';
import 'package:hwzn_base/general/helper/dio/http/GenericHttp.dart';
import 'package:hwzn_base/general/helper/storage/Storage.dart';
import 'package:hwzn_base/general/models/UserModel.dart';
import 'package:hwzn_base/general/models/dropdown_model/dropdown_model.dart';
import 'package:hwzn_base/general/models/register_model/RegisterModel.dart';
import 'package:hwzn_base/general/models/setting_model/setting_model.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/utilities/utils_functions/ApiNames.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/general/utilities/utils_functions/UtilsImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import '../helper/dio/utils/GlobalState.dart';

part 'GeneralHttpMethods.dart';
part 'GeneralRepository.dart';