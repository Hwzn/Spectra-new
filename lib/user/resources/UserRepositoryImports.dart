import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/constants/modals/LoadingDialog.dart';
import 'package:hwzn_base/general/helper/storage/Storage.dart';
import 'package:hwzn_base/user/models/blog_model.dart';
import 'package:hwzn_base/user/models/chat_model.dart';
import 'package:hwzn_base/user/models/comment_model.dart';
import 'package:hwzn_base/user/models/doctor_details_model.dart';
import 'package:hwzn_base/user/models/doctor_model.dart';
import 'package:hwzn_base/user/models/home_model.dart';
import 'package:hwzn_base/user/models/pet_model.dart';
import 'package:hwzn_base/user/screens/doctor_details/DoctorDetailsImports.dart';

import '../../general/blocks/user_cubit/user_cubit.dart';
import '../../general/helper/dio/http/GenericHttp.dart';
import '../../general/helper/dio/utils/GlobalState.dart';
import '../../general/models/UserModel.dart';
import '../../general/models/dropdown_model/dropdown_model.dart';
import '../../general/models/toJson/RegisterModel.dart';
import '../../general/utilities/routers/RouterImports.gr.dart';
import '../../general/utilities/utils_functions/ApiNames.dart';
import '../../general/utilities/utils_functions/UtilsImports.dart';
import '../models/toJson/UpdateProfileModel.dart';

part 'UserHttpMethods.dart';
part 'UserRepository.dart';