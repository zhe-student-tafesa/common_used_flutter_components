import 'package:common_used_flutter_components/routes/router_delegate.dart';
import 'package:flutter/material.dart';

class AppBarMediumPage extends StatelessWidget {
  const AppBarMediumPage({super.key});

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
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width,50),
          child: Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 20),
            child: const Text('Headline small', style: TextStyle(fontSize: 20)),
          ),
        ),
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