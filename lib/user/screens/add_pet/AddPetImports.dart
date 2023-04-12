import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/helper/validator/Validator.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/user/models/toJson/AddPetModel.dart';
import 'package:hwzn_base/user/resources/UserRepositoryImports.dart';
import 'package:hwzn_base/user/screens/add_pet/widgets/AddPetWidgetsImports.dart';
import 'package:images_picker/images_picker.dart';

import '../../../general/constants/modals/LoadingDialog.dart';
import '../../../general/helper/helper_methods/HelperMethods.dart';
import '../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../general/packages/input_fields/GenericTextField.dart';
import '../../../general/widgets/DefaultButton.dart';
import '../../../general/widgets/MyText.dart';
import '../../models/PetFilesModel.dart';

part 'AddPet.dart';
part 'AddPetData.dart';