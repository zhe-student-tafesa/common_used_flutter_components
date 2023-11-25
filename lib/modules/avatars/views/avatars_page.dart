import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';
import '../../../common/values/image_manager.dart';
import '../widgets/avatar_component.dart';

const double avatarSize = 64;

class AvatarsPage extends StatelessWidget {
  const AvatarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.avatars),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// basic avatar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // basic Avatar
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                  ),
                  // basic Avatar+ hasNotice
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    hasNotice: true,
                  ),
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    hasAdd: true,
                  ),
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    status: FZStrings.live,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              /// basic avatar+ 1 color border
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // basic Avatar+ hasBorder
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    hasBorder: true,
                  ),
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    hasBorder: true,
                    hasNotice: true,
                  ),
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    hasBorder: true,
                    hasAdd: true,
                  ),
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    hasBorder: true,
                    status: FZStrings.live,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              /// basic avatar+ multi color border
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // basic Avatar+ hasBorder
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    hasBorder: true,
                    borderLinearGradient: true,
                  ),
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    hasBorder: true,
                    borderLinearGradient: true,
                    hasNotice: true,
                  ),
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    hasBorder: true,
                    borderLinearGradient: true,
                    hasAdd: true,
                  ),
                  _buildAvatar(
                    avatarName: FZMediaNames.avatarSuccess,
                    hasBorder: true,
                    borderLinearGradient: true,
                    status: FZStrings.live,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              /// basic avatar+  Dropdown Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // basic Avatar
                  _buildAvatar(avatarName: FZMediaNames.avatarSuccess, hasDropdownButton: true),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              /// basic avatar+  name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // basic Avatar
                  _buildAvatar(avatarName: FZMediaNames.avatarSuccess, showTitle: true),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              /// initial name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildAvatar(avatarName: 'AH', showInitialInAvatar: true),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              /// show Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildAvatar(avatarName: 'Icon', showIconInAvatar: true),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              /// use AvatarComponent demo
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: const AvatarComponent(
                  avatarName: FZMediaNames.avatarSuccess,
                  hasBorder: true,
                  borderLinearGradient: true,
                  hasAdd: true,
                ),
              ),
              const Text('AvatarComponent Demo'),
              const SizedBox(
                height: 20,
              ),

              ///

              /// StackAvatar
              /// StackAvatar
              _buildStackAvatar([
                FZMediaNames.avatarSuccess,
                FZMediaNames.avatarPBM,
                FZMediaNames.gymWoman,
                FZMediaNames.sweatWoman,
                FZMediaNames.avatarSuccess,
                FZMediaNames.avatarPBM,
                FZMediaNames.gymWoman,
                FZMediaNames.sweatWoman,
              ]),
              const SizedBox(
                height: 30,
              ),
              _buildStackAvatar([
                FZMediaNames.avatarSuccess,
                FZMediaNames.avatarPBM,
                FZMediaNames.gymWoman,
                FZMediaNames.sweatWoman,
                FZMediaNames.avatarSuccess,
                FZMediaNames.avatarPBM,
                FZMediaNames.gymWoman,
              ]),
              const SizedBox(
                height: 30,
              ),
              _buildStackAvatar([
                FZMediaNames.avatarSuccess,
                FZMediaNames.avatarPBM,
                FZMediaNames.gymWoman,
                FZMediaNames.sweatWoman,
                FZMediaNames.avatarSuccess,
                FZMediaNames.avatarPBM,
              ]),
              const SizedBox(
                height: 30,
              ),
              _buildStackAvatar([
                FZMediaNames.avatarSuccess,
                FZMediaNames.avatarPBM,
                FZMediaNames.gymWoman,
                FZMediaNames.sweatWoman,
                FZMediaNames.avatarSuccess,
              ]),
              const SizedBox(
                height: 30,
              ),
              _buildStackAvatar([
                FZMediaNames.avatarSuccess,
                FZMediaNames.avatarPBM,
                FZMediaNames.gymWoman,
                FZMediaNames.sweatWoman,
              ]),
              const SizedBox(
                height: 30,
              ),
              _buildStackAvatar([
                FZMediaNames.avatarSuccess,
                FZMediaNames.avatarPBM,
                FZMediaNames.gymWoman,
              ]),
              const SizedBox(
                height: 30,
              ),
              _buildStackAvatar([
                FZMediaNames.avatarSuccess,
                FZMediaNames.avatarPBM,
              ]),
              const SizedBox(
                height: 30,
              ),
              _buildStackAvatar([
                FZMediaNames.avatarSuccess,
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvatar({
    String avatarName = '',
    bool showInitialInAvatar = false,
    bool showIconInAvatar = false,
    bool hasBorder = false,
    bool hasNotice = false,
    bool hasAdd = false,
    String status = '',
    bool borderLinearGradient = false,
    bool hasDropdownButton = false,
    bool showTitle = false,
  }) {
    double radius = avatarSize / 2;
    if (hasBorder) {
      radius = avatarSize / 2 - 4;
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: avatarSize,
          height: avatarSize,
          child: Stack(
            alignment: const Alignment(0, 0),
            children: [
              if (hasBorder)
                Container(
                  width: avatarSize,
                  height: avatarSize,
                  child: const Center(
                    child: Text(
                      "",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  decoration: borderLinearGradient
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(avatarSize / 2),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF833AB4),
                              Color(0xFFFD1D1D),
                              Color(0xFFFCB045),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ))
                      : const ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(width: 2, color: FZColors.primaryBlue),
                          ),
                        ),
                ),
              if (borderLinearGradient && hasBorder)
                Container(
                  width: avatarSize - 4,
                  height: avatarSize - 4,
                  child: const Center(
                    child: Text(
                      "",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(
                      side: BorderSide(width: 2, color: FZColors.primaryWhite),
                    ),
                  ),
                ),
              avatarName.isNotEmpty
                  ? _buildAvatarContent(
                      avatarName,
                      radius,
                      showInitialInAvatar: showInitialInAvatar,
                      showIconInAvatar: showIconInAvatar,
                    )
                  : CircleAvatar(
                      backgroundColor: FZColors.primaryGray,
                      radius: radius,
                    ),
              if (hasNotice)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: FZColors.noticeRed,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text('1', style: TextStyle(color: FZColors.primaryWhite, fontSize: 11.0)),
                  ),
                ),
              if (hasAdd)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: FZColors.addGreen,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 11,
                      color: FZColors.primaryWhite,
                    ),
                  ),
                ),
              if (status.isNotEmpty)
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 20,
                    width: 37,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: FZColors.addGreen,
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF833AB4),
                          Color(0xFFFD1D1D),
                          Color(0xFFFCB045),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: const Text(FZStrings.live, style: TextStyle(color: FZColors.primaryWhite, fontSize: 11.0)),
                  ),
                ),
            ],
          ),
        ),
        if (hasDropdownButton)
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: FZColors.lightBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.arrow_drop_down,
                size: 20,
              ),
            ),
          ),
        if (showTitle)
          Padding(
            padding: const EdgeInsets.only(left: 0, bottom: 16),
            child: Container(
              height: 44,
              width: 120,
              child: const ListTile(
                title: Text('Title', style: TextStyle(color: FZColors.primaryBlack, fontSize: 22.0, fontWeight: FontWeight.w400)),
                subtitle: Text('Subtitle', style: TextStyle(color: FZColors.primaryBlack, fontSize: 12.0)),
              ),
            ),
          )
      ],
    );
  }

  Widget _buildAvatarContent(
    String avatarName,
    double radius, {
    bool showInitialInAvatar = false,
    bool showIconInAvatar = false,
  }) {
    if (showInitialInAvatar) {
      return CircleAvatar(
        backgroundColor: FZColors.primaryGray,
        radius: radius,
        child: Text(avatarName, style: const TextStyle(color: FZColors.primaryWhite, fontSize: 16.0)),
      );
    } else if (showIconInAvatar) {
      return CircleAvatar(
        child: const Icon(
          Icons.person,
          color: FZColors.primaryWhite,
        ),
        backgroundColor: FZColors.primaryGray,
        radius: radius,
      );
    } else {
      return CircleAvatar(
        backgroundImage: AssetImage(avatarName),
        backgroundColor: FZColors.primaryGray,
        radius: radius,
      );
    }
  }

  Widget _buildStackAvatar(List<String> names) {
    double distanceBetween2Avatars = 44.0;
    var widgets = names.asMap().entries.map((name) {
      int index = name.key;
      return Positioned(
        left: index * distanceBetween2Avatars,
        child: Container(
          width: avatarSize,
          height: avatarSize,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: FZColors.primaryWhite,
            borderRadius: BorderRadius.circular(avatarSize / 2),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(name.value),
            backgroundColor: FZColors.primaryGray,
            radius: avatarSize / 2 - 4,
          ),
        ),
      );
    }).toList();
    return Container(
      width: double.infinity,
      height: 70,
      alignment: Alignment.centerLeft,
      child: Stack(
        alignment: Alignment.center,
        children: widgets,
      ),
    );
  }
}
