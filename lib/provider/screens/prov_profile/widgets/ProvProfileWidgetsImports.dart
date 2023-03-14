import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/helper/validator/Validator.dart';
import 'package:hwzn_base/provider/screens/prov_profile/ProvProfileImports.dart';
import 'package:hwzn_base/provider/widgets/DefaultContainer.dart';

import '../../../../general/blocks/user_cubit/user_cubit.dart';
import '../../../../general/constants/MyColors.dart';
import '../../../../general/constants/custom_ drop_down/DropDownTextField.dart';
import '../../../../general/models/dropdown_model/dropdown_model.dart';
import '../../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../../general/packages/input_fields/GenericTextField.dart';
import '../../../../general/widgets/CachedImage.dart';
import '../../../../general/widgets/MyText.dart';
import '../../../../user/screens/profile/widgets/ProfileWidgetsImports.dart';

part 'BuildProvProfilePhoto.dart';
part 'BuildProvProfileInputs.dart';