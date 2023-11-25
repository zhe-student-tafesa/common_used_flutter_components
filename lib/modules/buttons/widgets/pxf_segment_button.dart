import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';

class FZSegmentButtonWidget extends StatefulWidget {
  final int selectedIndex;
  final List<String> buttonList;
  final Function(int selectIndex) indexChanged;

  const FZSegmentButtonWidget({
    Key? key,
    required this.selectedIndex,
    required this.buttonList,
    required this.indexChanged,
  }) : super(key: key);

  @override
  State<FZSegmentButtonWidget> createState() => _FZSegmentButtonWidgetState();
}

class _FZSegmentButtonWidgetState extends State<FZSegmentButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) {
        return const VerticalDivider(
          width: 0.5,
          color: Colors.transparent,
        );
      },
      itemCount: widget.buttonList.length,
      itemBuilder: (BuildContext context, int index) {
        return ButtonWidget(
          selected: index == widget.selectedIndex,
          name: widget.buttonList[index],
          onSelected: (int selectIndex) {
            setState(() {
              widget.indexChanged(selectIndex);
            });
          },
          index: index,
        );
      },
    );
  }
}

// class ButtonWidget
typedef ValueCallback = Function(int selectIndex);

class ButtonWidget extends StatefulWidget {
  final int index;
  final bool selected;
  final String name;
  final ValueCallback onSelected;

  const ButtonWidget({Key? key, required this.name, required this.selected, required this.index, required this.onSelected}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final RenderBox box = context.findRenderObject() as RenderBox;
        final Offset position = box.localToGlobal(Offset.zero);
        widget.onSelected(widget.index);
      },
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: widget.selected ? FZColors.lightChooseBlue : FZColors.lighterPurple,
          borderRadius: _borderRadius(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.selected) Text('✔️ ' + widget.name, style: const TextStyle(color: FZColors.selectedFontBlue, fontSize: 14.0)),
            if (!widget.selected) Text(widget.name, style: const TextStyle(color: FZColors.primaryBlack, fontSize: 14.0)),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }

  BorderRadius _borderRadius() {
    if (widget.index == 0) {
      return const BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      );
    } else if (widget.index == 2) {
      return const BorderRadius.only(
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      );
    } else {
      return BorderRadius.all(Radius.circular(0));
    }
  }
}
