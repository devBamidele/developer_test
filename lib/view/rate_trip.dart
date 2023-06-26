import 'package:developer_test/res/component_style.dart';
import 'package:flutter/material.dart';

import '../res/app_text_style.dart';
import '../res/color.dart';
import '../res/components/picture_asset.dart';
import '../res/components/rate_trip_container.dart';

class RateTripPage extends StatelessWidget {
  const RateTripPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 43,
                left: 36,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const PictureAsset(x: 40, name: 'Close'),
                ),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 49, bottom: 27),
                    child: Text(
                      'Rate Your Trip',
                      style: AppTextStyles.headlineMedium,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: tripRatingDecoration,
                      child: const RateTripContainer(),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 15,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: ElevatedButton(
                    style: elevatedButton,
                    onPressed: () {},
                    child: const Text(
                      'Submit',
                      style: AppTextStyles.labelMedium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
