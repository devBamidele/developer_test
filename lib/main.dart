import 'package:developer_test/res/app_theme.dart';
import 'package:developer_test/view/choose_vehicle.dart';
import 'package:developer_test/view/rate_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme().appTheme(),
      routes: {
        '/': (context) => const ChooseVehiclePage(),
        '/rate_trip': (context) => const RateTripPage(),
      },
    );
  }
}
