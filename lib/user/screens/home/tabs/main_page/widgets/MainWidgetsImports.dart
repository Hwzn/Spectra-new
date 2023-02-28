import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/models/dropdown_model/dropdown_model.dart';
import 'package:hwzn_base/general/packages/input_fields/GenericTextField.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/widgets/CachedImage.dart';
import 'package:hwzn_base/general/widgets/DefaultButton.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';
import 'package:hwzn_base/user/screens/home/tabs/main_page/MainPageImports.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../../../../res.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:math' as math;
import 'package:hwzn_base/general/helper/validator/Validator.dart';

import '../../../../../models/doctor_model.dart';

part 'BuildMainAppBar.dart';
part 'BuildMainSearch.dart';
part 'BuildMainImage.dart';
part 'BuildSpecializationSection.dart';
part 'BuildDoctorsSection.dart';
part 'BuildSpecItem.dart';
part 'BuildDoctorItem.dart';
part 'BuildFilterBottomSheet.dart';