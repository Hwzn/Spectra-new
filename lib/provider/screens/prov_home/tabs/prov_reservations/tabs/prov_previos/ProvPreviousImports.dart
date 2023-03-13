import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/widgets/DefaultButton.dart';
import 'package:hwzn_base/provider/screens/prov_home/tabs/prov_reservations/ProvReservationsImports.dart';

import '../../../../../../../general/constants/MyColors.dart';
import '../../../../../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../../../../../general/utilities/utils_functions/LoadingDialog.dart';
import '../../../../../../../general/widgets/MyText.dart';
import '../../../../../../../user/models/reservation_model.dart';
import '../../../../../../../user/screens/home/tabs/reservations/widgets/ReservationsWidgetsImports.dart';

part 'ProvPrevious.dart';