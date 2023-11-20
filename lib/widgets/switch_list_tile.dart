import 'package:flutter/material.dart';

class SwithcListTile extends StatelessWidget {
  SwithcListTile(
      {required this.value,
      required this.onChanged,
      required this.title,
      required this.subTitle,
      super.key});

  bool value;
  void Function(bool) onChanged;
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
