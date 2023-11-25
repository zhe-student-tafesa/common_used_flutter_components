import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/routes/router_delegate.dart';
import 'package:flutter/material.dart';

class GoBackButtonWidget extends StatelessWidget {
  const GoBackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
      onPressed: () {
        FZRouterDelegate.of(context).pop();
      },
      child: const Text(FZStrings.goBack),
    );
  }
}