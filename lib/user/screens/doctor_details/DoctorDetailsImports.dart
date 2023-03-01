import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/user/resources/UserRepositoryImports.dart';
import 'package:hwzn_base/user/screens/doctor_details/widgets/DoctorDetailsWidgetsImports.dart';
import 'package:hwzn_base/user/screens/review_session/widgets/ReviewSessionWidgetsImports.dart';
import 'package:hwzn_base/user/screens/session/widgets/SessionWidgetsImports.dart';

import '../../../general/utilities/utils_functions/LoadingDialog.dart';
import '../../models/doctor_details_model.dart';

part 'DoctorDetails.dart';
part 'DoctorDetailsData.dart';