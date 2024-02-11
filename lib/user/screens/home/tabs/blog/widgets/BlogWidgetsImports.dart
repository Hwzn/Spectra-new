import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hwzn_base/general/helper/validator/Validator.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/utilities/utils_functions/UtilsImports.dart';
import 'package:hwzn_base/res.dart';
import 'package:hwzn_base/user/models/blog_model.dart';
import 'package:map/map.dart'as ImgMap;
import 'package:latlng/latlng.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../../../../general/constants/MyColors.dart';
import '../../../../../../general/models/dropdown_model/dropdown_model.dart';
import '../../../../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../../../../general/packages/input_fields/GenericTextField.dart';
import '../../../../../../general/packages/localization/Localizations.dart';
import '../../../../../../general/widgets/CachedImage.dart';
import '../../../../../../general/widgets/MyText.dart';
import '../../../../../models/comment_model.dart';
import '../BlogImports.dart';
import 'dart:math' as math;

part 'BuildPostItem.dart';
part 'BuildPostTitle.dart';
part 'BuildPostImages.dart';
part 'BuildMap.dart';
part 'BuildBlogActions.dart';
part 'BuildCommentsBottomSheet.dart';
part 'BuildCommentItem.dart';