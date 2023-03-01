import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/helper/validator/Validator.dart';
import 'package:hwzn_base/provider/screens/prov_register/ProvRegisterImports.dart';
import 'package:hwzn_base/user/screens/profile/ProfileImports.dart';

import '../../../../general/blocks/user_cubit/user_cubit.dart';
import '../../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../../general/packages/input_fields/GenericTextField.dart';
import '../../../../general/widgets/CachedImage.dart';
import '../../../../general/widgets/MyText.dart';

part 'BuildProfilePhoto.dart';
part 'BuildProfileInputItem.dart';
part 'BuildProfileInputs.dart';