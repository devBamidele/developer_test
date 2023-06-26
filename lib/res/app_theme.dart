import 'package:developer_test/res/app_text_style.dart';
import 'package:flutter/material.dart';

import 'color.dart';
import 'component_style.dart';

class AppTheme {
  ThemeData appTheme() {
    return ThemeData(
      fontFamily: 'Poppins',
      useMaterial3: true,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hintStyle: AppTextStyles.labelSmall,
        enabledBorder: inputBorder.copyWith(
          borderSide: const BorderSide(
            color: AppColors.borderEnabledColor,
          ),
        ),
        focusedBorder: inputBorder.copyWith(
          borderSide: const BorderSide(
            color: AppColors.borderFocusedColor,
          ),
        ),
      ),
    );
  }
} //
