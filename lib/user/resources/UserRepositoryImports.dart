import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hwzn_base/user/models/chat_model.dart';
import 'package:hwzn_base/user/models/doctor_details_model.dart';
import 'package:hwzn_base/user/models/doctor_model.dart';
import 'package:hwzn_base/user/models/home_model.dart';
import 'package:hwzn_base/user/screens/doctor_details/DoctorDetailsImports.dart';

import '../../general/helper/dio/http/GenericHttp.dart';
import '../../general/models/dropdown_model/dropdown_model.dart';
import '../../general/models/toJson/RegisterModel.dart';
import '../../general/utilities/routers/RouterImports.gr.dart';
import '../../general/utilities/utils_functions/ApiNames.dart';

part 'UserHttpMethods.dart';
part 'UserRepository.dart';