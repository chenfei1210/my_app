import 'package:flutter/material.dart';
import 'package:my_app/presentation/card/short_filter_menubar/filter_bottom_sheet.dart';
import 'package:my_app/presentation/card/short_filter_menubar/short_bottom_sheet.dart';

class ShortFilterMenubar extends StatelessWidget {
  const ShortFilterMenubar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) => const ShortBottomSheet(),
          ),
          child: const Row(
            children: [
              Icon(Icons.short_text),
              Text('short'),
            ],
          ),
        ),
        InkWell(
          onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) => const FilterBottomSheet(),
          ),
          child: const Row(
            children: [
              Icon(Icons.filter_alt),
              Text('filter'),
            ],
          ),
        )
      ],
    );
  }
}
