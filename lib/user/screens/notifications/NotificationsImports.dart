import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';
import 'package:hwzn_base/provider/resources/DoctorRepositoryImports.dart';
import 'package:hwzn_base/user/screens/notifications/widgets/NotificationsWidgetsImports.dart';

import '../../../general/constants/MyColors.dart';
import '../../../general/packages/localization/Localizations.dart';
import '../../../general/widgets/DefaultAppBar.dart';
import '../../../provider/models/notifications_model.dart';

part 'Notifications.dart';
part 'NotificationsData.dart';