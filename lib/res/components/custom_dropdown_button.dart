import 'package:developer_test/res/components/picture_asset.dart';
import 'package:flutter/material.dart';

import '../../data/mock_data.dart';
import '../app_text_style.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({Key? key}) : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String dropdownValue = paymentType.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isDense: true,
      value: dropdownValue,
      icon: const PictureAsset(name: 'Back', x: 8.84, y: 5),
      style: AppTextStyles.bodyMedium,
      underline: const SizedBox.shrink(),
      borderRadius: BorderRadius.circular(8),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: paymentType.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
