import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/provider/models/notifications_model.dart';
import 'package:hwzn_base/provider/models/prov_home_model.dart';
import 'package:hwzn_base/provider/models/toJson/UpdateDoctorProfileModel.dart';
import 'package:hwzn_base/provider/models/wallet_model.dart';

import '../../general/blocks/user_cubit/user_cubit.dart';
import '../../general/constants/modals/LoadingDialog.dart';
import '../../general/helper/dio/http/GenericHttp.dart';
import '../../general/helper/dio/utils/GlobalState.dart';
import '../../general/helper/storage/Storage.dart';
import '../../general/models/UserModel.dart';
import '../../general/utilities/utils_functions/ApiNames.dart';
import '../../user/models/reservation_model.dart';
import '../../user/models/review_model.dart';
import '../models/pet_info_model.dart';

part 'DoctorHttpMethods.dart';
part 'DoctorRepository.dart';