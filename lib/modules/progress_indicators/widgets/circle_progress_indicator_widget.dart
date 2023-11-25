import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

class CircleProgressIndicatorWidget extends StatefulWidget {
  const CircleProgressIndicatorWidget({super.key});

  @override
  State<CircleProgressIndicatorWidget> createState() =>
      _CircleProgressIndicatorWidgetState();
}

class _CircleProgressIndicatorWidgetState extends State<CircleProgressIndicatorWidget> with TickerProviderStateMixin {
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
    controller.repeat(reverse: true);
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
          const Text(FZStrings.circleIndicator),
          const SizedBox(height: 30),
          CircularProgressIndicator(
            value: controller.value,
            semanticsLabel: FZStrings.circleIndicator,
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