import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PictureAsset extends StatelessWidget {
  final double? x;
  final double? y;
  final String name;

  const PictureAsset({
    super.key,
    this.x,
    this.y,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$name.svg',
      width: x,
      height: y ?? x,
    );
  }
}
