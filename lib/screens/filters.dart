import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/provider/filters_provider.dart';
import 'package:meals_app/widgets/switch_list_tile.dart';

// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';



class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
  final activeFilters =  ref.watch(filterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body:
      Column(
          children: [
            SwithcListTile(
              value: activeFilters[Filter.glutenFree]!,
              onChanged: (isChecked) {
            ref.read(filterProvider.notifier).setFilter(Filter.glutenFree, isChecked);
              },
              title: 'Gluten-free',
              subTitle: 'Only include gluten-free meals.',
            ),
            SwithcListTile(

              value: activeFilters[Filter.lactoseFree]!,
              onChanged: (isChecked) {
                ref.read(filterProvider.notifier).setFilter(Filter.lactoseFree, isChecked);
              },
              title: 'Lactose-free',
              subTitle: 'Only include lactose-free meals.',
            ),
            SwithcListTile(

              value: activeFilters[Filter.vegetarian]!,
              onChanged: (isChecked) {
                ref.read(filterProvider.notifier).setFilter(Filter.vegetarian, isChecked);
              },
              title: "Vegetarian",
              subTitle: 'Only include vegetarian meals.',
            ),
            SwithcListTile(

              value: activeFilters[Filter.vegan]!,
              onChanged: (isChecked) {
                ref.read(filterProvider.notifier).setFilter(Filter.vegan, isChecked);
              },
              title: "Vegan",
              subTitle: 'Only include vegan meals.',
            )
          ],
        ),
      );

  }
}
