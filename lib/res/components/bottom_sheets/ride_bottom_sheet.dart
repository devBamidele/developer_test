import 'package:developer_test/res/component_style.dart';
import 'package:developer_test/res/components/ride_tile.dart';
import 'package:flutter/material.dart';

import '../../../data/mock_data.dart';
import '../../app_text_style.dart';
import '../../color.dart';
import '../custom_back_button.dart';

class RideBottomSheet extends StatelessWidget {
  final BuildContext sheetContext;

  const RideBottomSheet({
    super.key,
    required this.sheetContext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: rideSheetDecoration,
      height: 370,
      child: Stack(
        children: [
          Positioned(
            top: 8,
            right: 10,
            child: CustomBackButton(
              onPressed: () => Navigator.pop(sheetContext),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12, left: 36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Choose your ride',
                          style: AppTextStyles.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: rideType.length,
                      itemBuilder: (BuildContext context, int index) {
                        return RideTile(item: rideType[index]);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(
                          thickness: 1.2,
                          height: 1,
                          color: AppColors.borderEnabledColor,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
