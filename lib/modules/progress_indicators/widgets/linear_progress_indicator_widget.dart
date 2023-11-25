import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

class LinearProgressIndicatorWidget extends StatefulWidget {
  const LinearProgressIndicatorWidget({super.key});

  @override
  State<LinearProgressIndicatorWidget> createState() =>
      _LinearProgressIndicatorWidgetState();
}

class _LinearProgressIndicatorWidgetState extends State<LinearProgressIndicatorWidget> with TickerProviderStateMixin {
  late AnimationController controller;
  bool determinate = false;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(FZStrings.linearIndicator),
          const SizedBox(height: 30),
          LinearProgressIndicator(
            value: controller.value,
            semanticsLabel: FZStrings.linearIndicator,
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              const Expanded(
                child: Text(FZStrings.determinateMode),
              ),
              Switch(
                value: determinate,
                onChanged: (bool value) {
                  setState(() {
                    determinate = value;
                    if (determinate) {
                      controller.stop();
                    } else {
                      controller
                        ..forward(from: controller.value)
                        ..repeat();
                    }
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}