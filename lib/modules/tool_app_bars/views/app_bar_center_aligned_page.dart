import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:common_used_flutter_components/routes/router_delegate.dart';
import 'package:flutter/material.dart';

class AppBarCenterAlignedPage extends StatelessWidget {
  const AppBarCenterAlignedPage({super.key});

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
       centerTitle: true,
       backgroundColor: Colors.white,
       actions: const [
         Icon(Icons.account_circle, size: 30),
         SizedBox(width: 16),
       ],
     ),
   );
  }
}