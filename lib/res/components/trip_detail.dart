import 'package:developer_test/res/components/picture_asset.dart';
import 'package:flutter/material.dart';

import '../app_text_style.dart';

class TripDetail extends StatelessWidget {
  final Decoration decoration;
  final String location;
  final EdgeInsetsGeometry textPadding;
  final PictureAsset icon;
  final double paddingX;

  const TripDetail({
    Key? key,
    required this.decoration,
    required this.location,
    required this.textPadding,
    required this.icon,
    required this.paddingX,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: decoration,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingX),
        child: Row(
          children: [
            icon,
            Padding(
              padding: textPadding,
              child: Text(
                location,
                style: AppTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
