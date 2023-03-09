import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hwzn_base/general/blocks/user_cubit/user_cubit.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/constants/modals/LoadingDialog.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/general/widgets/DefaultButton.dart';
import 'package:hwzn_base/user/models/time_model.dart';
import 'package:hwzn_base/user/models/toJson/AddReservationModel.dart';
import 'package:hwzn_base/user/models/toJson/ReservationTypeModel.dart';
import 'package:hwzn_base/user/resources/UserRepositoryImports.dart';
import 'package:hwzn_base/user/screens/add_reservation/widgets/AddReservationWidgetsImports.dart';

import '../../../general/widgets/CachedImage.dart';
import '../../../general/widgets/MyText.dart';
import '../../models/available_day_model.dart';
import '../../models/pet_model.dart';
import '../../models/toJson/ReservationPricesModel.dart';
import '../doctor_details/widgets/DoctorDetailsWidgetsImports.dart';

part 'AddReservation.dart';
part 'AddReservationData.dart';