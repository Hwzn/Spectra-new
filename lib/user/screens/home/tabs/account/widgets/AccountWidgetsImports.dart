import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hwzn_base/general/resources/GeneralRepoImports.dart';
import 'package:hwzn_base/general/utilities/routers/RouterImports.gr.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/user/models/pet_model.dart';
import 'package:hwzn_base/user/screens/home/tabs/account/AccountImports.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../../general/blocks/user_cubit/user_cubit.dart';
import '../../../../../../general/constants/MyColors.dart';
import '../../../../../../general/packages/generic_bloc/generic_cubit.dart';
import '../../../../../../general/widgets/CachedImage.dart';
import '../../../../../../general/widgets/DefaultButton.dart';
import '../../../../../../general/widgets/MyText.dart';

part 'BuildAccountHeader.dart';
part 'BuildPetsSection.dart';
part 'BuildPetItem.dart';
part 'BuildSettingItem.dart';
part 'BuildLangBottomSheet.dart';
part 'BuildSignOutSheet.dart';