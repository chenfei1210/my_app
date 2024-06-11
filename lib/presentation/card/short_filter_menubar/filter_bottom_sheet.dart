import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/domain/card/card_notifier.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Filter'),
        SingleChildScrollView(
          child: Column(
            children: [BrandFilter()],
          ),
        ),
      ],
    );
  }
}

class BrandFilter extends ConsumerWidget {
  const BrandFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardBrandFilterNotifier = ref.watch(cardNotifierProvider.notifier);
    final cardBrandFilterState = ref.watch(cardNotifierProvider);

    return Column(
      children: [
        const Text('カードブランド'),
        SizedBox(
          height: 50,
          child: CheckboxListTile(
            title: const Text('すべて'),
            value: cardBrandFilterState.isCardBrandFilterSelectedAll,
            onChanged: (value) {
              value == true
                  ? cardBrandFilterNotifier.selectedAll()
                  : cardBrandFilterNotifier.unSelectedAll();
            },
          ),
        ),
        ...cardBrandFilterState.cardBrandFilterSet.map(
          (cardBrandFilterItem) => SizedBox(
            height: 50,
            child: CheckboxListTile(
              title: Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: cardBrandFilterItem.cardBrand.logo,
                  ),
                  Text(cardBrandFilterItem.cardBrand.name),
                ],
              ),
              value: cardBrandFilterItem.isSelected,
              onChanged: (value) {
                value == true
                    ? cardBrandFilterNotifier.selected(cardBrandFilterItem)
                    : cardBrandFilterNotifier.unSelected(cardBrandFilterItem);
              },
            ),
          ),
        ),
      ],
    );
  }
}
