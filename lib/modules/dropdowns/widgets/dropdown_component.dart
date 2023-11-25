import 'package:flutter/material.dart';

import '../../../models/dropdown_item_model.dart';
import '../views/drop_down_page.dart';
import 'dropdown_choice.dart';

class DropdownComponent extends StatefulWidget {
  final List<DropdownItem> dropdownItems;
  final ValueChanged<int> valueChanged;
  final String itemShow;
  final bool showOutline;
  final String errorHintText;

  const DropdownComponent({
    Key? key,
    required this.dropdownItems,
    required this.valueChanged,
    this.itemShow = '',
    this.showOutline = true,
    this.errorHintText = 'hintText',
  }) : super(key: key);

  @override
  State<DropdownComponent> createState() => _DropdownComponentState();
}

class _DropdownComponentState extends State<DropdownComponent> {
  double itemsHeight = 0;
  late bool showDropdownAtBottom;
  late String itemShow;
  bool showDropdown = false;

  @override
  void initState() {
    super.initState();
    itemsHeight = 48.0 * (widget.dropdownItems.length) + 16;
    showDropdownAtBottom = true;
    itemShow = widget.itemShow;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (!showDropdownAtBottom) _buildAnimatedSwitcher(showDropdown, widget.dropdownItems),
        DropdownField(
          itemShow: itemShow,
          hintText: widget.errorHintText,
          onChanged: (value) {
            setState(() {
              showDropdown = value;
            });
          },
          itemsHeight: itemsHeight,
          itemWidth: itemWidth,
          showOutline: widget.showOutline,
          showDropdown: showDropdown,
        ),
        if (showDropdownAtBottom) _buildAnimatedSwitcher(showDropdown, widget.dropdownItems),
      ],
    );
  }

  AnimatedSwitcher _buildAnimatedSwitcher(bool showDropdown, List<DropdownItem> dropdownItems) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: showDropdown
          ? Container(
              key: UniqueKey(),
              height: itemsHeight,
              width: itemWidth,
              alignment: Alignment.center,
              child: DropdownChoiceWidget(
                valueChanged: (int value) {
                  setState(() {
                    if (value == -1) {
                      itemShow = '';
                    } else {
                      itemShow = dropdownItems[value].name;
                      this.showDropdown = false;
                    }
                  });
                },
                choices: dropdownItems,
              ),
            )
          : Container(),
    );
  }
}
