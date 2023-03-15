import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';
import 'package:hwzn_base/provider/resources/DoctorRepositoryImports.dart';
import 'package:hwzn_base/provider/screens/pet_profile/widgets/PetProfileWidgetsImports.dart';
import 'package:hwzn_base/provider/widgets/DefaultContainer.dart';

import '../../../general/constants/MyColors.dart';
import '../../../general/widgets/CachedImage.dart';
import '../../models/pet_info_model.dart';

part 'PetProfile.dart';
part 'PetProfileData.dart';