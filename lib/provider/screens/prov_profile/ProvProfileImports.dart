import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/constants/modals/LoadingDialog.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/general/widgets/LoadingButton.dart';
import 'package:hwzn_base/provider/models/toJson/UpdateDoctorProfileModel.dart';
import 'package:hwzn_base/provider/resources/DoctorRepositoryImports.dart';
import 'package:hwzn_base/provider/screens/prov_profile/widgets/ProvProfileWidgetsImports.dart';

import '../../../general/blocks/user_cubit/user_cubit.dart';
import '../../../general/constants/custom_ drop_down/CustomDropDown.dart';
import '../../../general/helper/configration/CustomButtonAnimation.dart';
import '../../../general/helper/helper_methods/HelperMethods.dart';
import '../../../general/models/dropdown_model/dropdown_model.dart';
import '../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../general/resources/GeneralRepoImports.dart';
import '../../../general/widgets/DefaultButton.dart';

part 'ProvProfile.dart';
part 'ProvProfileData.dart';