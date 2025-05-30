import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shoppingcart/page/home_vm.dart';

class SelectorButton extends ConsumerWidget {
  int id;
  Widget icon;

  SelectorButton({required this.id, required this.icon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    HomeVM vm = ref.read(homeProvider.notifier);
    SelectorModel model = ref.watch(homeProvider);

    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: model.isSelected(id) ? Colors.deepOrange : Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: () {
          vm.onClick(id);
        },
        icon: icon,
      ),
    );
  }
}
