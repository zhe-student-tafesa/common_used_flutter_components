import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FZMediaNames {
  static const avatarSuccess = 'assets/icons/img_success.png';
  static const avatarPBM = 'assets/icons/img_pbm.png';
  static const gymWoman = 'assets/icons/img_gym_woman.png';
  static const sweatWoman = 'assets/icons/img_sweat_woman.png';
  static const robert = 'assets/icons/robert.png';
  static const selected = 'assets/icons/selected.png';
  static const unselected = 'assets/icons/unselected.png';
  static const man1Avatar = 'assets/icons/man1_avatar.png';
  static const woman1Avatar = 'assets/icons/woman1_avatar.png';
  static const woman2Avatar = 'assets/icons/woman2_avatar.png';
  static const selectedSvg = 'assets/icons/selected.svg';
  static const unselectedSvg = 'assets/icons/unselected.svg';
  static const square = 'assets/icons/square.svg';
  static const row1_1 = 'assets/icons/row1_1.png';
  static const row1_2 = 'assets/icons/row1_2.png';
  static const row1_3 = 'assets/icons/row1_3.png';
  static const row2_1 = 'assets/icons/row2_1.png';
  static const row2_2 = 'assets/icons/row2_2.png';
  static const image4Row1_1 = 'assets/icons/image4_r1_1.png';
  static const image4Row1_2 = 'assets/icons/image4_r1_2.png';
  static const image4Row2_1 = 'assets/icons/image4_r2_1.png';
  static const image4Row2_2 = 'assets/icons/image4_r2_2.png';
  static const image3Row1_1 = 'assets/icons/image3Row1_1.png';
  static const image3Row2_1 = 'assets/icons/image3Row2_1.png';
  static const image3Row2_2 = 'assets/icons/image3Row2_2.png';
  static const fireFox = 'assets/icons/firefox.svg';
  static const womanList = 'assets/icons/woman_list.png';
  static const number1Badge = 'assets/icons/number1_badge.svg';
  static const switchChoice = 'assets/icons/switch.svg';
  static const building = 'assets/icons/building.png';
  static const counterAmount = 'assets/icons/counter_amount.svg';
  static const tickChoose = 'assets/icons/tick_choose.svg';
  static const button = 'assets/icons/button.svg';
  static const iconBadgeNotice = 'assets/icons/icon_badge_notice.svg';
  static const supportAvatar = 'assets/icons/support_avatar.png';
}

class FZImage extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingLeft;
  final double? paddingRight;
  final Color? color;
  final VoidCallback? onTap;

  const FZImage(
    this.imagePath, {
    Key? key,
    this.width,
    this.height,
    this.paddingBottom,
    this.paddingTop,
    this.paddingLeft,
    this.paddingRight,
    this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imagePath.endsWith(".svg")) {
      return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0),
          child: SvgPicture.asset(
            imagePath,
            width: width,
            height: height,
            color: color,
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.fromLTRB(paddingLeft ?? 0, paddingTop ?? 0, paddingRight ?? 0, paddingBottom ?? 0),
          child: Image.asset(
            imagePath,
            width: width,
            height: height,
          ),
        ),
      );
    }
  }
}
