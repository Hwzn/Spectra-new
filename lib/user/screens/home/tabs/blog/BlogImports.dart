import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hwzn_base/general/blocks/user_cubit/user_cubit.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/constants/modals/LoadingDialog.dart';
import 'package:hwzn_base/general/packages/generic_bloc/generic_cubit.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/widgets/DefaultAppBar.dart';
import 'package:hwzn_base/user/models/comment_model.dart';
import 'package:hwzn_base/user/resources/UserRepositoryImports.dart';
import 'package:hwzn_base/user/screens/home/tabs/blog/widgets/BlogWidgetsImports.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../general/models/UserModel.dart';
import '../../../../../general/utilities/utils_functions/LoadingDialog.dart';
import '../../../../../general/widgets/MyText.dart';
import '../../../../models/blog_model.dart';

part 'Blog.dart';
part 'BlogData.dart';