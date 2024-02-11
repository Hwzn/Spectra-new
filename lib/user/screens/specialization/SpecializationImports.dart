import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';
import 'package:hwzn_base/user/resources/UserRepositoryImports.dart';
import 'package:hwzn_base/user/screens/home/tabs/main_page/widgets/MainWidgetsImports.dart';

import '../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../general/packages/localization/Localizations.dart';
import '../../models/doctor_model.dart';

part 'Specialization.dart';
part 'SpecializationData.dart';