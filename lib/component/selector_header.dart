import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../page/home_vm.dart';
import 'selector_button.dart';

class SelectorHeader extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SelectorModel model = ref.watch(homeProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: AspectRatio(
              aspectRatio: 5 / 3,
              child: Image.asset("${model.selectedImage()}", fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SelectorButton(id: 0, icon: Icon(Icons.directions_bike)),
                SelectorButton(id: 1, icon: Icon(Icons.motorcycle)),
                SelectorButton(id: 2, icon: Icon(Icons.directions_car_filled)),
                SelectorButton(id: 3, icon: Icon(Icons.airplanemode_on)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
