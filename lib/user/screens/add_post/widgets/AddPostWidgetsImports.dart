import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hwzn_base/general/blocks/user_cubit/user_cubit.dart';
import 'package:hwzn_base/general/widgets/DefaultButton.dart';
import 'package:hwzn_base/res.dart';
import 'package:hwzn_base/user/screens/add_post/AddPostImports.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../general/constants/MyColors.dart';
import '../../../../general/models/dropdown_model/dropdown_model.dart';
import '../../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../../general/utilities/utils_functions/UtilsImports.dart';
import '../../../../general/widgets/CachedImage.dart';
import '../../../../general/widgets/MyText.dart';

part 'BuildUserInfo.dart';
part 'BuildPostType.dart';
part 'BuildPostButtons.dart';
part 'BuildPostCats.dart';
part 'BuildAddPostImages.dart';