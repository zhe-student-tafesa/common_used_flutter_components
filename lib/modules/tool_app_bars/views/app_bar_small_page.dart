import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/routes/router_delegate.dart';
import 'package:flutter/material.dart';

class AppBarSmallPage extends StatelessWidget {
  const AppBarSmallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            FZRouterDelegate.of(context).pop();
          },
        ),
        title: const Text(FZStrings.title),
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.attach_file, size: 25),
          SizedBox(width: 16),
          Icon(Icons.today, size: 25),
          SizedBox(width: 16),
          Icon(Icons.more_vert, size: 25),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}