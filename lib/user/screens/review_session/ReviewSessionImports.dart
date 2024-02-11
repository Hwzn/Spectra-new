import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/blocks/user_cubit/user_cubit.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/user/resources/UserRepositoryImports.dart';
import 'package:hwzn_base/user/screens/home/tabs/reservations/widgets/ReservationsWidgetsImports.dart';
import 'package:hwzn_base/user/screens/review_session/widgets/ReviewSessionWidgetsImports.dart';

import '../../../general/packages/localization/Localizations.dart';
import '../../../general/widgets/DefaultButton.dart';
import '../../../general/widgets/MyText.dart';
import '../../models/reservation_model.dart';
import '../../models/toJson/RateSessionModel.dart';

part 'ReviewSession.dart';
part 'ReviewSessionData.dart';