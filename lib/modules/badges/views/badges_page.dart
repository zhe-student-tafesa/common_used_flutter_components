import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';
import '../../../common/values/string_manager.dart';
import '../widgets/large_badge_component.dart';
import '../widgets/large_badge_with_max_characters_component.dart';
import '../widgets/small_badge_component.dart';

class BadgesPage extends StatefulWidget {
  /// Create a Badge that stacks [label] on top of [child].
  const BadgesPage({Key? key}) : super(key: key);

  @override
  State<BadgesPage> createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.badges),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),

            /// Small badge
            Container(
                child: const Text('Small badge', style: TextStyle(color: FZColors.primaryBlack, fontSize: 20.0)),
                padding: const EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                height: 80),
            const SmallBadgeComponent(),
            const SizedBox(height: 40),

            /// largeSize badge: when showing label
            Container(
                child: const Text('largeSize badge', style: TextStyle(color: FZColors.primaryBlack, fontSize: 20.0)),
                padding: const EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                height: 80),
            const LargeBadgeComponent(
              labelText: '1',
            ),
            SizedBox(height: 40),

            ///  Large badge with max characters (on a navigation item)
            Container(
                child: const Text('Large badge with max characters', style: TextStyle(color: FZColors.primaryBlack, fontSize: 20.0)),
                padding: const EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                height: 80),
            const LargeBadgeWithMaxCharactersComponent(
              labelText: '999+',
            ),
          ],
        ),
      ),
    );
  }
}
