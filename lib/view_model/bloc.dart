import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/mock_data.dart';

final rideProvider = ChangeNotifierProvider((ref) => RideNotifier());

class RideNotifier extends ChangeNotifier {
  String? price;

  void updateRide(Map<String, dynamic> item) {
    for (var ride in rideType) {
      if (ride == item) {
        ride['selected'] = !ride['selected']; // Toggle the selected state
        if (ride['selected']) {
          price = ride['price'];
        }
      } else {
        ride['selected'] = false; // Deselect other rides
      }
    }
    notifyListeners();
  }

  bool isRideSelected(Map<String, dynamic> item) {
    return item['selected'];
  }
}
