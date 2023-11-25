import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/modules/progress_indicators/widgets/circle_progress_indicator_widget.dart';
import 'package:common_used_flutter_components/modules/progress_indicators/widgets/linear_progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorsPage extends StatelessWidget {
  const ProgressIndicatorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.progressIndicators),
      ),
      body: Column(
        children: const [
          LinearProgressIndicatorWidget(),
          CircleProgressIndicatorWidget()
        ],
      ),
    );
  }

}