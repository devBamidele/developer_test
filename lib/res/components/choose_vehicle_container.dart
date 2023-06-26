import 'package:developer_test/res/components/picture_asset.dart';
import 'package:flutter/material.dart';

import '../app_text_style.dart';
import '../color.dart';
import '../component_style.dart';

class ChooseVehicleContainer extends StatelessWidget {
  const ChooseVehicleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 12,
      ),
      height: 87,
      decoration: addLocationDecoration,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Row(
                  children: [
                    const PictureAsset(
                      name: 'Ellipse',
                      x: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: Text(
                        'Skate Park',
                        style: AppTextStyles.bodyMedium
                            .copyWith(color: AppColors.textColor2),
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: AppColors.borderEnabledColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.7, top: 2),
                child: Row(
                  children: [
                    const PictureAsset(
                      name: 'Pin',
                      x: 13,
                      y: 16.9,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Text(
                        'Home',
                        style: AppTextStyles.bodyMedium
                            .copyWith(color: AppColors.textColor2),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 36,
              width: 68,
              decoration: addButtonDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  PictureAsset(name: 'Plus', x: 18),
                  Text(
                    'Add',
                    style: AppTextStyles.titleMedium,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
