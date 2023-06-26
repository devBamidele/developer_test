import 'package:developer_test/res/components/custom_rating_bar.dart';
import 'package:developer_test/res/components/picture_asset.dart';
import 'package:developer_test/res/components/trip_detail.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../data/mock_data.dart';
import '../app_text_style.dart';
import '../color.dart';
import '../component_style.dart';
import 'feedback_form.dart';

class RateTripContainer extends StatelessWidget {
  const RateTripContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(36, 30, 36, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: CircleAvatar(
                      radius: 23,
                      foregroundImage: AssetImage('assets/pics/face.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ben Stokes',
                        style: AppTextStyles.titleSmall,
                      ),
                      Row(
                        children: const [
                          PictureAsset(x: 16, name: 'Shape'),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              '4.9',
                              style: AppTextStyles.bodySmall,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const PictureAsset(x: 40, name: 'Message'),
            ],
          ),
        ),
        Text(
          'How is your trip?',
          style: AppTextStyles.headlineMedium
              .copyWith(color: AppColors.textColor1),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 22),
          child: CustomRatingBar(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 36),
          child: FeedBackForm(),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 23, bottom: 13),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 36),
              child: Text(
                'Trip Detail',
                style: AppTextStyles.bodyLarge,
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Column(
              children: [
                TripDetail(
                  decoration: detailDecoration(),
                  location: 'State Park',
                  textPadding: const EdgeInsets.only(left: 13),
                  icon: const PictureAsset(name: 'Ellipse', x: 24),
                  paddingX: 36,
                ),
                TripDetail(
                  decoration: detailDecoration(showTop: false),
                  location: 'Home',
                  textPadding: const EdgeInsets.only(left: 15.55),
                  icon: const PictureAsset(name: 'Pin', x: 18.45, y: 24),
                  paddingX: 39,
                ),
              ],
            ),
            Positioned(
              left: 47.5,
              top: 39,
              child: DottedLine(
                dashRadius: 5,
                lineThickness: 2,
                dashColor: AppColors.dashColor,
                direction: Axis.vertical,
                lineLength: screenHeight * 0.043,
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 23, bottom: 13),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 36),
              child: Text(
                'Payment Detail',
                style: AppTextStyles.bodyLarge,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 36, right: 36, bottom: 23),
          child: Column(
            children: paymentData.entries
                .map(
                  (entry) => Padding(
                    padding: const EdgeInsets.only(bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          entry.key,
                          style: AppTextStyles.bodyMedium,
                        ),
                        Text(
                          entry.value,
                          style: AppTextStyles.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
