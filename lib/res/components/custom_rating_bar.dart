import 'package:developer_test/res/components/picture_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatefulWidget {
  const CustomRatingBar({Key? key}) : super(key: key);

  @override
  State<CustomRatingBar> createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      glow: false,
      minRating: 1,
      allowHalfRating: true,
      itemPadding: const EdgeInsets.symmetric(horizontal: 10),
      initialRating: 4,
      itemSize: 36,
      itemBuilder: (context, index) => const PictureAsset(name: 'Shape'),
      onRatingUpdate: (value) {},
    );
  }
}
