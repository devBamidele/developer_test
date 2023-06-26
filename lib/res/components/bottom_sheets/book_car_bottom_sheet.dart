import 'dart:math';

import 'package:developer_test/res/components/custom_dropdown_button.dart';
import 'package:developer_test/res/components/picture_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/mock_data.dart';
import '../../../view_model/bloc.dart';
import '../../app_text_style.dart';
import '../../component_style.dart';

class BookCarBottomSheet extends StatefulWidget {
  const BookCarBottomSheet({Key? key}) : super(key: key);

  @override
  State<BookCarBottomSheet> createState() => _BookCarBottomSheetState();
}

class _BookCarBottomSheetState extends State<BookCarBottomSheet> {
  String dropdownValue = paymentType.first;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final price = ref.watch(rideProvider).price;
        return Container(
          padding: const EdgeInsets.fromLTRB(36, 14, 36, 5),
          color: Colors.white,
          height: 140,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomDropDownButton(),
                    Container(
                      height: 36,
                      width: 119,
                      decoration: addButtonDecoration,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          PictureAsset(name: 'Per', x: 16),
                          Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Text(
                              'Promo code',
                              style: AppTextStyles.titleMedium,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: elevatedButton.copyWith(
                  padding: customPadding,
                ),
                onPressed: () => Navigator.pushNamed(context, '/rate_trip'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 17),
                      child: Text(
                        'Book this car',
                        style: AppTextStyles.labelMedium,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          price ?? '',
                          style: AppTextStyles.labelMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(
                            radius: 20,
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            child: Transform.rotate(
                              angle: 180 * (pi / 180),
                              child: const Icon(Icons.arrow_back_ios_rounded),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
