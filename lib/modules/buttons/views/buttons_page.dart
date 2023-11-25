import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/modules/buttons/widgets/icon_buttons/filled_icon_button_component.dart';
import 'package:common_used_flutter_components/modules/buttons/widgets/icon_buttons/filled_tonal_icon_button_component.dart';
import 'package:common_used_flutter_components/modules/buttons/widgets/icon_buttons/outlined_icon_button_component.dart';
import 'package:common_used_flutter_components/modules/buttons/widgets/icon_buttons/standard_icon_button_component.dart';
import 'package:flutter/material.dart';

import '../widgets/common_buttons/elevated_button_component.dart';
import '../widgets/common_buttons/filled_button_component.dart';
import '../widgets/common_buttons/filled_tonal_button_component.dart';
import '../widgets/common_buttons/outline_button_component.dart';
import '../widgets/common_buttons/text_button_component.dart';
import '../widgets/extend_floating_action_button/extended_floating_action_button_no_icon_component.dart';
import '../widgets/extend_floating_action_button/extended_floating_action_button_with_icon_component.dart';
import '../widgets/floating_action_buttons/floating_action_button_component.dart';
import '../widgets/floating_action_buttons/large_floating_action_button_component.dart';
import '../widgets/floating_action_buttons/small_floating_action_button_component.dart';
import '../widgets/segmented_button/multiple_select_segmented_button_component.dart';
import '../widgets/segmented_button/single_select_segmented_button_component.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  Calendar calendarView = Calendar.day;
  Set<Sizes> selection = <Sizes>{Sizes.large, Sizes.extraLarge};
  int groupValue = 0;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.buttons),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                _buildCommonButtons(),
                const Divider(height: 0, color: FZColors.noticeRed, indent: 5, endIndent: 5),
                const SizedBox(height: 20),
                _buildFAB(),
                const SizedBox(height: 20),
                const Divider(height: 0, color: FZColors.noticeRed, indent: 5, endIndent: 5),
                const SizedBox(height: 20),
                _buildExtendedFAB(),
                const SizedBox(height: 20),
                const Divider(height: 0, color: FZColors.noticeRed, indent: 5, endIndent: 5),
                const SizedBox(height: 10),
                _buildIconButtons(),
                const Divider(height: 0, color: FZColors.noticeRed, indent: 5, endIndent: 5),
                const SizedBox(height: 30),
                _buildSegmentedButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCommonButtons() {
    return Column(
      children: [
        /// ElevatedButtonComponent
        const SizedBox(height: 20),
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: const Text('Common Button', style: TextStyle(color: FZColors.primaryBlack, fontSize: 20.0)),
        ),
        LoginButton340(
          onPressed: () {
            debugPrint('LoginButton340');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('Use ElevatedButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),

        /// FilledButtonComponent
        const SizedBox(
          height: 10,
        ),
        NextButton89(
          onPressed: () {
            debugPrint('NextButton89');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('Use FilledButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),

        /// FilledTonalButtonComponent
        const SizedBox(
          height: 10,
        ),
        NextFilledTonalButton90(
          onPressed: () {
            debugPrint('NextFilledTonalButton90');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('Use FilledTonalButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),

        ///  OutlineButtonComponent
        const SizedBox(
          height: 10,
        ),
        MyOutlineButton(
          onPressed: () {
            debugPrint('OutlineButtonComponent');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('Use OutlineButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),

        ///   TextButtonComponent
        const SizedBox(
          height: 10,
        ),
        MyTextButton(
          onPressed: () {
            debugPrint('TextButtonComponent');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('Use TextButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildFAB() {
    return Column(
      children: [
        ///   FloatingActionButtonsComponent
        const SizedBox(height: 10),
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: const Text('Floating Action Button', style: TextStyle(color: FZColors.primaryBlack, fontSize: 20.0)),
        ),
        MyFloatingActionButton(
          onPressed: () {
            debugPrint('FloatingActionButtonsComponent');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('Use FloatingActionButtonsComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),

        /// SmallFloatingActionButtonsComponent
        const SizedBox(
          height: 10,
        ),
        MySmallFloatingActionButtons(
          onPressed: () {
            debugPrint('MySmallFloatingActionButtons');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('SmallFloatingActionButtonsComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),

        /// LargeFloatingActionButtonsComponent
        const SizedBox(
          height: 10,
        ),
        MyLargeFloatingActionButton(
          onPressed: () {
            debugPrint('LargeFloatingActionButtonsComponent');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('LargeFloatingActionButtonsComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),
      ],
    );
  }

  Widget _buildExtendedFAB() {
    return Column(
      children: [
        /// ExtendedFABWithIconComponent
        const SizedBox(height: 10),
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: const Text('ExtendedFAB', style: TextStyle(color: FZColors.primaryBlack, fontSize: 20.0)),
        ),
        MyExtendedFloatingActionButtonWithIcon(
          onPressed: () {
            debugPrint('ExtendedFABWithIconComponent');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('ExtendedFABWithIconComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),

        /// ExtendedFABNoIconComponent
        const SizedBox(
          height: 10,
        ),
        MyExtendedFABNoIcon(
          onPressed: () {
            debugPrint('ExtendedFABNoIconComponent');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('ExtendedFAB_NoIconComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),
      ],
    );
  }

  Widget _buildIconButtons() {
    return Column(
      children: [
        ///  StandardIconButtonComponent
        const SizedBox(height: 10),
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: const Text('Icon Buttons', style: TextStyle(color: FZColors.primaryBlack, fontSize: 20.0)),
        ),
        MyStandardIconButton(
          onPressed: () {
            debugPrint('StandardIconButtonComponent');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('StandardIconButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),

        ///  FilledIconButtonComponent
        const SizedBox(
          height: 10,
        ),
        MyFilledIconButton(
          onPressed: () {
            debugPrint('FilledIconButtonComponent');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('FilledIconButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),

        ///  FilledTonalIconButtonComponent
        const SizedBox(
          height: 10,
        ),
        MyFilledTonalIconButton(
          onPressed: () {
            debugPrint('FilledTonalIconButtonComponent');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('FilledTonalIconButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),

        ///  OutlinedIconButtonComponent
        const SizedBox(
          height: 10,
        ),
        MyOutlinedIconButton(
          onPressed: () {
            debugPrint('OutlinedIconButtonComponent');
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('OutlinedIconButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
        ),
      ],
    );
  }

  Widget _buildSegmentedButtons() {
    return Column(
      children: [
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: const Text('Segmented Button', style: TextStyle(color: FZColors.primaryBlack, fontSize: 20.0)),
        ),
        SingleSelectSegmentedButtonComponent(
          itemChanged: (String selectedItem) {
            setState(() {
              /// Your code
              debugPrint(selectedItem.toString());
            });
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('SingleSelectSegmentedButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 12.0)),
        ),

        /// MultipleSelectSegmentedButtonComponent
        const SizedBox(height: 30),
        MultipleSelectSegmentedButtonComponent(
          itemChanged: (Set<Sizes> newSelection) {
            setState(() {
              /// Your code
              debugPrint(newSelection.toString());
            });
          },
        ),
        Container(
          height: 40,
          alignment: Alignment.center,
          child: const Text('MultipleSelectSegmentedButtonComponent Demo', style: TextStyle(color: FZColors.primaryBlack, fontSize: 12.0)),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
