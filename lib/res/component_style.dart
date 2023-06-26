import 'package:flutter/material.dart';

import 'color.dart';

const tripRatingDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
    topLeft: Radius.circular(30),
  ),
);

/// The border for the input fields
const inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(18),
  ),
);

/// The decoration for the elevated button
final elevatedButton = ElevatedButton.styleFrom(
  backgroundColor: Colors.black,
  minimumSize: const Size(double.infinity, 64),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(32),
    ),
  ),
);

const detailLine = BorderSide(color: AppColors.borderEnabledColor);

final customPadding = MaterialStateProperty.all<EdgeInsetsGeometry>(
  const EdgeInsets.symmetric(horizontal: 12),
);

const bookingModalShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
);

final rideSheetDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(24),
  color: Colors.white,
);

BoxDecoration detailDecoration({bool showTop = true}) {
  return BoxDecoration(
    border: Border(
      bottom: detailLine,
      top: showTop ? detailLine : BorderSide.none,
    ),
    color: AppColors.fillColor,
  );
}

final topGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: const Alignment(0.00, -0.4),
    end: const Alignment(0, 1),
    colors: [
      Colors.white,
      Colors.white.withOpacity(0),
    ],
  ),
);

final addLocationDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(24),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 0.5,
      blurRadius: 4,
      offset: const Offset(0, 3),
    ),
  ],
);

final addButtonDecoration = BoxDecoration(
  border: Border.all(
    color: AppColors.borderEnabledColor,
  ),
  color: AppColors.fillColor,
  borderRadius: BorderRadius.circular(18),
);
