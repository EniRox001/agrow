// ========================== Internal Packages ========================== //
export 'dart:convert';
export 'package:flutter/material.dart';

// ========================== External Packages ========================== //
export 'package:get/get.dart' hide MultipartFile, Response;
export 'package:http/http.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:shared_preferences/shared_preferences.dart';
export 'package:smooth_page_indicator/smooth_page_indicator.dart'
    hide ScaleEffect, SlideEffect, SwapEffect;
export 'package:flutter_animate/flutter_animate.dart';

// ========================== Routing ========================== //
export 'package:agrow/routes/screens.dart';

// ========================== Views ========================== //
export 'package:agrow/views/preloads/onboarding.dart';
export 'package:agrow/views/auth/auth_home.dart';
export 'package:agrow/views/auth/tabs/registration.dart';
export 'package:agrow/views/auth/tabs/login.dart';

// ========================== Constants ========================== //
export 'package:agrow/common/strings/en_gb.dart';
export 'package:agrow/common/utilities/colors.dart';
export 'package:agrow/common/utilities/text_styles.dart';
export 'package:agrow/common/enums/account_type.dart';

// ========================== Generated ========================== //
export 'package:agrow/gen/assets.gen.dart';

// ========================== Widgets ========================== //``
export 'package:agrow/widgets/buttons/agrow_buuton.dart';
export 'package:agrow/widgets/layout/onboarding_slide.dart';
export 'package:agrow/widgets/layout/agrow_divider.dart';
export 'package:agrow/widgets/input/agrow_input_field.dart';
export 'package:agrow/widgets/input/agrow_checkbox.dart';
export 'package:agrow/widgets/input/agrow_picture_tile.dart';
