import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/user/screens/doctor_details/DoctorDetailsImports.dart';

import '../../../../general/constants/MyColors.dart';
import '../../../../general/utilities/routers/RouterImports.gr.dart';
import '../../../../general/widgets/CachedImage.dart';
import '../../../../general/widgets/MyText.dart';
import '../../../../res.dart';
import '../../../models/available_day_model.dart';
import '../../../models/review_model.dart';

part 'BuildDrDetailsAppBar.dart';
part 'BuildDoctorDateTime.dart';
part 'BuildDateTimeItem.dart';
part 'BuildDoctorReviews.dart';
part 'BuildDoctorReviewItem.dart';