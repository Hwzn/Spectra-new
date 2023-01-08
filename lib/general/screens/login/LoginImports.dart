import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/blocks/user_cubit/user_cubit.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/helper/configration/CustomButtonAnimation.dart';
import 'package:hwzn_base/general/helper/helper_methods/HelperMethods.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/packages/localization/Localizations.dart';
import 'package:hwzn_base/general/resources/GeneralRepoImports.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/widgets/AuthScaffold.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../widgets/AuthAppBar.dart';
import '../../widgets/HeaderLogo.dart';
import 'widgets/login_widgets_imports.dart';

part 'Login.dart';
part 'LoginData.dart';
