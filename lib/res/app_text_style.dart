import 'package:flutter/material.dart';

import 'color.dart';

class AppTextStyles {
  static const TextStyle labelMedium = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle labelSmall = TextStyle(
    color: AppColors.textColor2,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.4,
    letterSpacing: 0.2,
  );

  static const TextStyle headlineMedium = TextStyle(
    color: Colors.white,
    fontSize: 19.5,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle titleSmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor1,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor2,
  );

  static const TextStyle bodyLarge = TextStyle(
    color: AppColors.textColor1,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle bodyMedium = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodySmall = TextStyle(
    color: AppColors.fadedTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
