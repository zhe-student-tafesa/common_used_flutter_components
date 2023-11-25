import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

import '../../../common/values/image_manager.dart';

class ListsPage extends StatefulWidget {
  const ListsPage({Key? key}) : super(key: key);

  @override
  State<ListsPage> createState() => _ListsPageState();
}

class _ListsPageState extends State<ListsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FZStrings.lists),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            height: 56,
            padding: const EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: const Text(
              FZStrings.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 56,
            padding: const EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  FZStrings.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                FZImage(
                  FZMediaNames.selectedSvg,
                  width: 25,
                  height: 25,
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 56,
            padding: const EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              children: const [
                FZImage(
                  FZMediaNames.fireFox,
                  width: 25,
                  height: 25,
                ),
                SizedBox(width: 25.5),
                Text(
                  FZStrings.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 56,
            padding: const EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              children: [
                Image.asset(FZMediaNames.womanList, height: 40, width: 40),
                const SizedBox(width: 16),
                const Text(
                  FZStrings.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                const FZImage(
                  FZMediaNames.number1Badge,
                  width: 20,
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 64,
            padding: const EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      FZStrings.label,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: FZColors.grayBlue),
                    ),
                    Text(
                      FZStrings.title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 64,
            padding: const EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      FZStrings.label,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: FZColors.grayBlue),
                    ),
                    Text(
                      FZStrings.title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const FZImage(
                  FZMediaNames.switchChoice,
                  width: 52,
                  height: 48,
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 64,
            padding: const EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              children: [
                Image.asset(FZMediaNames.building, height: 40, width: 40),
                SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      FZStrings.label,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: FZColors.grayBlue),
                    ),
                    Text(
                      FZStrings.title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 64,
            padding: const EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              children: [
                Image.asset(FZMediaNames.building, height: 40, width: 40),
                SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      FZStrings.label,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: FZColors.grayBlue),
                    ),
                    Text(
                      FZStrings.title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Spacer(),
                const FZImage(
                  FZMediaNames.counterAmount,
                  width: 78,
                  height: 28,
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 64,
            padding: const EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      FZStrings.title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      FZStrings.subTitle,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: FZColors.grayBlue),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 64,
            padding: const EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      FZStrings.title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      FZStrings.subTitle,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: FZColors.grayBlue),
                    )
                  ],
                ),
                Spacer(),
                const FZImage(
                  FZMediaNames.tickChoose,
                  width: 20,
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 64,
            padding: const EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              children: [
                const FZImage(
                  FZMediaNames.selectedSvg,
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 24),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      FZStrings.title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      FZStrings.subTitle,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: FZColors.grayBlue),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            height: 64,
            padding: const EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.centerLeft,
            color: FZColors.brighterWhite,
            child: Row(
              children: [
                Image.asset(
                  FZMediaNames.womanList,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      FZStrings.title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      FZStrings.subTitle,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: FZColors.grayBlue),
                    )
                  ],
                ),
                const Spacer(),
                const FZImage(
                  FZMediaNames.button,
                  width: 95,
                  height: 40,
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
