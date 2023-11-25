import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';
import '../../../common/values/image_manager.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  bool isRadioOne = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          /// Drawer Header
          Container(
            height: 160,
            alignment: Alignment.center,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: FZColors.brighterWhite,
              ),
              margin: EdgeInsets.zero,
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.avatarSuccess),
                    backgroundColor: FZColors.primaryGray,
                    radius: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Kristin Watson',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '@kristinwatson',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          /// Drawer Body
          Container(
            color: FZColors.brighterWhite,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 334,
                  height: 56,
                  decoration: BoxDecoration(
                    color: FZColors.lightChooseBlue,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          'Material Lite',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 52,
                          height: 32,
                          alignment: isRadioOne ? Alignment.centerRight : Alignment.centerLeft,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: isRadioOne ? FZColors.selectedFontBlue : FZColors.radioGrey,
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isRadioOne = !isRadioOne;
                              });
                            },
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isRadioOne ? FZColors.radioButtonSelected : FZColors.radioGreySelected,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  horizontalTitleGap: 4,
                  title: Row(
                    children: [
                      const Text(
                        'Task Center',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      Container(
                        width: 41,
                        height: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: FZColors.primaryBlue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          'New!',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: FZColors.primaryWhite),
                        ),
                      ),
                    ],
                  ),
                  leading: const Icon(
                    Icons.task,
                    color: FZColors.primaryBlack,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  horizontalTitleGap: 4,
                  title: Row(
                    children: [
                      const Text(
                        'Pay',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Container(
                        width: 41,
                        height: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          ' ',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: FZColors.primaryWhite),
                        ),
                      ),
                    ],
                  ),
                  leading: const Icon(
                    Icons.payment,
                    color: FZColors.primaryBlack,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  height: 0,
                  color: FZColors.primaryBlack,
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  horizontalTitleGap: 4,
                  leading: const Text(
                    'Account',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: FZColors.primaryBlack),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  horizontalTitleGap: 4,
                  title: Row(
                    children: [
                      const Text(
                        'Notification',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Container(
                        width: 20,
                        height: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: FZColors.noticeBackgroundRed,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '3',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: FZColors.primaryWhite),
                        ),
                      ),
                    ],
                  ),
                  leading: const Icon(
                    Icons.local_fire_department_outlined,
                    color: FZColors.primaryBlack,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  horizontalTitleGap: 4,
                  title: Row(
                    children: [
                      const Text(
                        'Payment Methods',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Container(
                        width: 41,
                        height: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          ' ',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: FZColors.primaryWhite),
                        ),
                      ),
                    ],
                  ),
                  leading: const Icon(
                    Icons.payments,
                    color: FZColors.primaryBlack,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  horizontalTitleGap: 4,
                  title: Row(
                    children: [
                      const Text(
                        'Support',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),

                      Container(
                        width: 41,
                        height: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          ' ',
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: FZColors.primaryWhite),
                        ),
                      ),

                      ///
                    ],
                  ),
                  leading: Image.asset(
                    FZMediaNames.supportAvatar,
                    width: 32,
                    height: 32,
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
