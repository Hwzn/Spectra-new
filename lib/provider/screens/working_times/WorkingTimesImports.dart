import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/blocks/user_cubit/user_cubit.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/general/widgets/LoadingButton.dart';
import 'package:hwzn_base/provider/resources/DoctorRepositoryImports.dart';
import 'package:hwzn_base/provider/screens/working_times/widgets/WorkingTimesWidgetsImports.dart';
import 'package:jumping_dot/jumping_dot.dart';

import '../../../general/constants/MyColors.dart';
import '../../../general/helper/configration/CustomButtonAnimation.dart';
import '../../../general/helper/storage/Storage.dart';
import '../../../general/models/UserModel.dart';
import '../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../general/packages/localization/Localizations.dart';
import '../../../general/widgets/DefaultButton.dart';
import '../../../general/widgets/MyText.dart';
import '../../../user/models/available_day_model.dart';
import '../../../user/models/time_model.dart';
import '../../../user/screens/add_reservation/widgets/AddReservationWidgetsImports.dart';

part 'WorkingTimes.dart';
part 'WorkingTimesData.dart';