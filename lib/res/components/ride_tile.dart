import 'package:developer_test/res/component_style.dart';
import 'package:developer_test/res/components/bottom_sheets/book_car_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view_model/bloc.dart';
import '../app_text_style.dart';
import '../color.dart';

class RideTile extends ConsumerWidget {
  final Map<String, dynamic> item;

  const RideTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected =
        ref.watch(rideProvider.select((value) => value.isRideSelected(item)));

    ref.listen<RideNotifier>(rideProvider, (prev, curr) {
      final updatedValue = curr.isRideSelected(item);

      // Then display the modal bottom sheet
      if (updatedValue) {
        showMyBottomSheet(context);
      }
    });

    return GestureDetector(
      onTap: () => ref.read(rideProvider).updateRide(item),
      child: Container(
        color: isSelected ? AppColors.primaryColor : AppColors.fillColor,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 36),
          title: Text(
            item['car_type'],
            style: AppTextStyles.bodyMedium.copyWith(
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              item['seater'],
              style: AppTextStyles.bodySmall.copyWith(
                color: isSelected ? Colors.white : AppColors.textColor2,
              ),
            ),
          ),
          trailing: Text(
            item['price'],
            style: AppTextStyles.bodyMedium.copyWith(
              fontSize: 16,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  void showMyBottomSheet(BuildContext context) {
    showModalBottomSheet(
      barrierColor: AppColors.barrierColor,
      clipBehavior: Clip.hardEdge,
      context: context,
      shape: bookingModalShape,
      builder: (BuildContext sheetContext) {
        return const BookCarBottomSheet();
      },
    );
  }
}
