import 'package:flutter/material.dart';

enum Sizes { extraSmall, small, medium, large, extraLarge }

class MultipleSelectSegmentedButtonComponent extends StatefulWidget {
  final Function(Set<Sizes> newSelection) itemChanged;

  const MultipleSelectSegmentedButtonComponent({Key? key, required this.itemChanged}) : super(key: key);

  @override
  State<MultipleSelectSegmentedButtonComponent> createState() => _MultipleSelectSegmentedButtonComponentState();
}

class _MultipleSelectSegmentedButtonComponentState extends State<MultipleSelectSegmentedButtonComponent> {
  Set<Sizes> selection = <Sizes>{Sizes.large, Sizes.extraLarge};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      segments: const <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(value: Sizes.extraSmall, label: Text('XS')),
        ButtonSegment<Sizes>(value: Sizes.small, label: Text('S')),
        ButtonSegment<Sizes>(value: Sizes.medium, label: Text('M')),
        ButtonSegment<Sizes>(
          value: Sizes.large,
          label: Text('L'),
        ),
        ButtonSegment<Sizes>(value: Sizes.extraLarge, label: Text('XL')),
      ],
      selected: selection,
      onSelectionChanged: (Set<Sizes> newSelection) {
        setState(() {
          selection = newSelection;
          widget.itemChanged(newSelection);
        });
      },
      multiSelectionEnabled: true,
    );
  }
}
