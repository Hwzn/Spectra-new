import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/helper/helper_methods/HelperMethods.dart';
import 'package:hwzn_base/general/helper/validator/Validator.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/general/widgets/CachedImage.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/general/widgets/DefaultButton.dart';
import 'package:hwzn_base/user/models/toJson/UpdateProfileModel.dart';
import 'package:hwzn_base/user/resources/UserRepositoryImports.dart';
import 'package:hwzn_base/user/screens/profile/widgets/ProfileWidgetsImports.dart';

import '../../../general/blocks/user_cubit/user_cubit.dart';
import '../../../general/constants/custom_ drop_down/CustomDropDown.dart';
import '../../../general/packages/localization/Localizations.dart';

part 'Profile.dart';
part 'ProfileData.dart';