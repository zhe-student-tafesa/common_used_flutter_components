import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';

class BottomAppBarComponent extends StatelessWidget {
  const BottomAppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 80,
      shape: const CircularNotchedRectangle(),
      color: FZColors.surface,
      elevation: 2,
      surfaceTintColor: FZColors.surfaceTintColor,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu, color: FZColors.primaryBlack),
              onPressed: () {},
            ),
            // if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search, color: FZColors.primaryBlack),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite, color: FZColors.primaryBlack),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
