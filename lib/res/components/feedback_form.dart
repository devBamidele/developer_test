import 'package:flutter/material.dart';

import '../color.dart';

class FeedBackForm extends StatelessWidget {
  const FeedBackForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      maxLines: 2,
      decoration: const InputDecoration(
        fillColor: AppColors.fillColor,
        hintText: 'Write your feedback',
        contentPadding: EdgeInsets.all(18),
      ),
    );
  } //
}
