import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';
import '../../../common/values/string_manager.dart';
import '../views/avatars_page.dart';

class AvatarComponent extends StatefulWidget {
  final String avatarName;
  final bool showInitialInAvatar;

  final bool showIconInAvatar;
  final bool hasBorder;
  final bool hasNotice;

  final bool hasAdd;

  final String status;
  final bool borderLinearGradient;

  final bool hasDropdownButton;

  final bool showTitle;

  const AvatarComponent({
    Key? key,
    this.avatarName = '',
    this.showInitialInAvatar = false,
    this.showIconInAvatar = false,
    this.hasBorder = false,
    this.hasNotice = false,
    this.hasAdd = false,
    this.status = '',
    this.borderLinearGradient = false,
    this.hasDropdownButton = false,
    this.showTitle = false,
  }) : super(key: key);

  @override
  State<AvatarComponent> createState() => _AvatarComponentState();
}

class _AvatarComponentState extends State<AvatarComponent> {
  @override
  Widget build(BuildContext context) {
    double radius = avatarSize / 2;
    if (widget.hasBorder) {
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
              if (widget.hasBorder)
                Container(
                  width: avatarSize,
                  height: avatarSize,
                  child: const Center(
                    child: Text(
                      "",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  decoration: widget.borderLinearGradient
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
              if (widget.borderLinearGradient && widget.hasBorder)
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
              widget.avatarName.isNotEmpty
                  ? _buildAvatarContent(
                      widget.avatarName,
                      radius,
                      showInitialInAvatar: widget.showInitialInAvatar,
                      showIconInAvatar: widget.showIconInAvatar,
                    )
                  : CircleAvatar(
                      backgroundColor: FZColors.primaryGray,
                      radius: radius,
                    ),
              if (widget.hasNotice)
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
              if (widget.hasAdd)
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
              if (widget.status.isNotEmpty)
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
        if (widget.hasDropdownButton)
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
        if (widget.showTitle)
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
}
