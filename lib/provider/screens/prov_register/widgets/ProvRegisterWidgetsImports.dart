import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/helper/validator/Validator.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';
import 'package:hwzn_base/provider/screens/prov_register/ProvRegisterImports.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../../../general/constants/MyColors.dart';
import '../../../../general/constants/custom_ drop_down/DropDownTextField.dart';
import '../../../../general/models/dropdown_model/dropdown_model.dart';
import '../../../../general/packages/input_fields/GenericTextField.dart';
import '../../../../general/widgets/DefaultButton.dart';
import '../../../../res.dart';


part 'BuildProvRegisterInputs.dart';
part 'BuildProviderType.dart';
part 'BuildUploadCv.dart';
part 'BuildPasswordsView.dart';
part 'BuildDoctorItem.dart';
part 'BuildDoctorsBottomSheet.dart';
part 'BuildDoctorsDropDown.dart';
part 'BuildCountryPhone.dart';
part 'BuildDoctorsView.dart';