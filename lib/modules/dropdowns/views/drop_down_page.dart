import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';
import '../../../common/values/string_manager.dart';
import '../../../models/dropdown_item_model.dart';
import '../widgets/dropdown_choice.dart';
import '../widgets/dropdown_component.dart';

const itemWidth = 298.0;

bool showDropdownAtBottom = true;

final _globalKey = GlobalKey();
final _globalKeyFilled = GlobalKey();

class DropdownsPage extends StatefulWidget {
  const DropdownsPage({Key? key}) : super(key: key);

  @override
  State<DropdownsPage> createState() => _DropdownsPageState();
}

class _DropdownsPageState extends State<DropdownsPage> {
  List<DropdownItem> dropdownItems = [
    DropdownItem(1, 'Menu item0', false),
    DropdownItem(4, 'Menu item1', false),
    DropdownItem(33, 'Menu item2', false),
    DropdownItem(44, 'Menu item3', false),
  ];
  List<DropdownItem> dropdownItemsFilled = [
    DropdownItem(1, 'Menu item0_Filled', false),
    DropdownItem(4, 'Menu item1_Filled', false),
    DropdownItem(33, 'Menu item2_Filled', false),
    DropdownItem(44, 'Menu item3_Filled', false),
  ];
  String itemShow = '';
  String itemShowFilled = '';

  double itemsHeight = 0;
  double itemsHeightFilled = 0;
  bool showDropdown = false;
  bool showDropdownFilled = false;

  @override
  void initState() {
    super.initState();
    itemsHeight = 48.0 * (dropdownItems.length) + 16;
    itemsHeightFilled = 48.0 * (dropdownItemsFilled.length) + 16;

    showDropdownAtBottom = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.dropdowns),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                alignment: Alignment.topCenter,
                child: DropdownComponent(dropdownItems: dropdownItems, valueChanged: (int value) {}, errorHintText: 'errorHintText-1'),
              ),
              Container(
                height: 300,
                alignment: Alignment.topCenter,
                child: DropdownComponent(
                    dropdownItems: dropdownItemsFilled, valueChanged: (int value) {}, showOutline: false, errorHintText: 'errorHintText-2'),
              ),
            ],
          ),
        ),
      ),
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

  AnimatedSwitcher _buildAnimatedSwitcher2(bool showDropdown, List<DropdownItem> dropdownItems) {
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
                      itemShowFilled = '';
                    } else {
                      itemShowFilled = dropdownItems[value].name;
                      this.showDropdownFilled = false;
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

class DropdownField extends StatefulWidget {
  final String itemShow;
  final double itemWidth;
  final double itemsHeight;
  final String hintText;
  final void Function(bool) onChanged;
  final bool showOutline;
  final bool showDropdown;

  const DropdownField({
    Key? key,
    required this.itemShow,
    required this.hintText,
    required this.onChanged,
    required this.itemWidth,
    required this.itemsHeight,
    required this.showOutline,
    required this.showDropdown,
  }) : super(key: key);

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () async {
        setState(() {
          widget.onChanged(!widget.showDropdown);
        });
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: widget.itemWidth,
            padding: const EdgeInsets.only(left: 16, right: 10),
            height: 44,
            decoration: widget.showOutline
                ? BoxDecoration(
                    color: FZColors.primaryWhite,
                    border: Border.all(
                        color: (widget.itemShow).isNotEmpty ? FZColors.selectedFontBlue : FZColors.borderRed,
                        width: 1.5),
                    borderRadius: BorderRadius.circular(8),
                  )
                : BoxDecoration(
                    color: FZColors.primaryWhite,
                    border: Border(
                      bottom: BorderSide(color: (widget.itemShow).isNotEmpty ? FZColors.selectedFontBlue : FZColors.borderRed, width: 1.5),
                    ),
                  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                (widget.itemShow).isNotEmpty
                    ? Text(
                        widget.itemShow,
                        style: const TextStyle(fontSize: 14, color: FZColors.primaryBlack),
                      )
                    : RichText(
                        text: TextSpan(
                          text: widget.hintText,
                          style: const TextStyle(fontSize: 14, color: FZColors.primaryBlack),
                          children: [],
                        ),
                      ),
                widget.showDropdown
                    ? Icon(
                        Icons.arrow_drop_up,
                        color: (widget.itemShow).isNotEmpty ? FZColors.selectedFontBlue : FZColors.borderRed,
                      )
                    : Icon(
                        Icons.arrow_drop_down,
                        color: (widget.itemShow).isNotEmpty ? FZColors.selectedFontBlue : FZColors.borderRed,
                      ),
              ],
            ),
          ),
          if (widget.itemShow.isEmpty)
            Positioned(
              left: 20,
              top: -8,
              child: Container(
                width: 38,
                height: 16,
                alignment: Alignment.center,
                child: const Text(
                  FZStrings.error,
                  style: TextStyle(fontSize: 11, color: FZColors.borderRed),
                ),
                decoration: BoxDecoration(color: FZColors.primaryWhite),
              ),
            ),
        ],
      ),
    );
  }
}
