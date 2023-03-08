import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/user/screens/add_reservation/AddReservationImports.dart';
import 'package:images_picker/images_picker.dart';

import '../../../../general/constants/MyColors.dart';
import '../../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../../general/widgets/MyText.dart';
import '../../../models/available_day_model.dart';
import '../../../models/time_model.dart';
import '../../doctor_details/widgets/DoctorDetailsWidgetsImports.dart';

part 'BuildAvailableTime.dart';
part 'BuildPaymentInfo.dart';
part 'BuildPaymentItem.dart';
part 'BuildReservationType.dart';
part 'BuildAcceptTerms.dart';