import 'package:developer_test/res/component_style.dart';
import 'package:developer_test/res/components/choose_vehicle_container.dart';
import 'package:flutter/material.dart';

import '../res/components/bottom_sheets/ride_bottom_sheet.dart';
import '../res/components/picture_asset.dart';

class ChooseVehiclePage extends StatelessWidget {
  const ChooseVehiclePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => showCustomModalBottomSheet(context),
              child: Image.asset(
                'assets/pics/maps.jpg',
                fit: BoxFit.fitHeight,
                height: double.infinity,
              ),
            ),
            Positioned(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: topGradient,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Image.asset(
                        'assets/pics/lyft.png',
                        scale: 0.85,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: ChooseVehicleContainer(),
                  )
                ],
              ),
            ),
            const Positioned(
              top: 41,
              left: 40,
              child: PictureAsset(name: 'Menu', x: 40),
            ),
            const Positioned(
              top: 40,
              right: 40,
              child: CircleAvatar(
                radius: 23,
                foregroundImage: AssetImage('assets/pics/face.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showCustomModalBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    barrierColor: Colors.transparent,
    isDismissible: false,
    clipBehavior: Clip.hardEdge,
    context: context,
    builder: (BuildContext sheetContext) {
      return RideBottomSheet(
        sheetContext: sheetContext,
      );
    },
  );
}
