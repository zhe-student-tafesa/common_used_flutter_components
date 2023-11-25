import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';
import '../../../common/values/string_manager.dart';

class DividerPage extends StatelessWidget {
  const DividerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FZStrings.dividers),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 408,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Divider Vertical', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
                      VerticalDivider(
                        width: 1,
                        color: FZColors.noticeRed,
                      ),
                      Text('Divider Vertical', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
                      VerticalDivider(
                        width: 8,
                        thickness: 8,
                        color: FZColors.lightBlue,
                      ),
                      Text('Divider Vertical', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text('Divider Horizontal', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 0,
                  color: FZColors.noticeRed,
                  indent: 50,
                  endIndent: 50,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Divider(
                  height: 0,
                  color: FZColors.noticeRed,
                  indent: 50,
                  endIndent: 50,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text('Subheader', style: TextStyle(color: FZColors.primaryBlack, fontSize: 16.0)),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 8,
                  thickness: 8,
                  color: FZColors.lightBlue,
                  indent: 50,
                  endIndent: 50,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Divider(
                  height: 8,
                  thickness: 8,
                  color: FZColors.lightBlue,
                  indent: 50,
                  endIndent: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
