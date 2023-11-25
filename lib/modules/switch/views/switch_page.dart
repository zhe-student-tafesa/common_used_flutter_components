import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/modules/switch/widgets/switch_widget.dart';
import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({Key? key}) : super(key: key);

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.switches),
      ),
      body: Center(
        child: SwitchWidget(
          value: light,
          onChanged: (bool value) {
            setState(() {
              light = value;
            });
          },
        ),
      ),
    );
  }
}