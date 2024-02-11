import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/constants/modals/LoadingDialog.dart';
import 'package:hwzn_base/general/helper/helper_methods/HelperMethods.dart';
import 'package:hwzn_base/general/helper/validator/Validator.dart';
import 'package:hwzn_base/general/models/dropdown_model/dropdown_model.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';
import 'package:hwzn_base/user/models/toJson/AddBlogModel.dart';
import 'package:hwzn_base/user/resources/UserRepositoryImports.dart';
import 'package:hwzn_base/user/screens/add_post/widgets/AddPostWidgetsImports.dart';
import 'package:jumping_dot/jumping_dot.dart';

import '../../../general/packages/input_fields/GenericTextField.dart';
import '../../../general/packages/localization/Localizations.dart';
import '../../../general/screens/location_address/location_cubit/location_cubit.dart';

part 'AddPost.dart';
part 'AddPostData.dart';