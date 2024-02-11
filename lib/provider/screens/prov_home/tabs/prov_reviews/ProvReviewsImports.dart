import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/provider/resources/DoctorRepositoryImports.dart';

import '../../../../../general/constants/MyColors.dart';
import '../../../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../../../general/packages/localization/Localizations.dart';
import '../../../../../general/widgets/DefaultAppBar.dart';
import '../../../../../general/widgets/MyText.dart';
import '../../../../../user/models/review_model.dart';
import '../../../../../user/screens/doctor_details/widgets/DoctorDetailsWidgetsImports.dart';
import '../../../../widgets/DefaultContainer.dart';

part 'ProvReviews.dart';
part 'ProvReviewsData.dart';