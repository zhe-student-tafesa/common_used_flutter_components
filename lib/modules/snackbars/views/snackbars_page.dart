import 'package:common_used_flutter_components/common/values/color_manager.dart';
import 'package:common_used_flutter_components/common/values/image_manager.dart';
import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

class SnackBarsPage extends StatelessWidget {
  const SnackBarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.snackbars),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: const [
              SnackBarsWidget(),
              SizedBox(height: 20),
              SnackBarsWidget(
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                backgroundColor: FZColors.snackbarGreen,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
                backgroundColor: FZColors.snackbarGreen,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
                backgroundColor: FZColors.snackbarGreen,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                backgroundColor: FZColors.snackbarGreen,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
                backgroundColor: FZColors.snackbarGreen,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
                backgroundColor: FZColors.snackbarGreen,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                backgroundColor: FZColors.snackbarGreen,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
                backgroundColor: FZColors.snackbarGreen,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
                backgroundColor: FZColors.snackbarGreen,
              ),

              SizedBox(height: 20),
              SnackBarsWidget(
                backgroundColor: FZColors.snackbarOrange,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
                backgroundColor: FZColors.snackbarOrange,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
                backgroundColor: FZColors.snackbarOrange,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                backgroundColor: FZColors.snackbarOrange,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
                backgroundColor: FZColors.snackbarOrange,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
                backgroundColor: FZColors.snackbarOrange,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                backgroundColor: FZColors.snackbarOrange,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
                backgroundColor: FZColors.snackbarOrange,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
                backgroundColor: FZColors.snackbarOrange,
              ),

              SizedBox(height: 20),
              SnackBarsWidget(
                backgroundColor: FZColors.snackbarRed,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
                backgroundColor: FZColors.snackbarRed,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
                backgroundColor: FZColors.snackbarRed,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                backgroundColor: FZColors.snackbarRed,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
                backgroundColor: FZColors.snackbarRed,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: Icon(Icons.info_rounded, color: FZColors.primaryWhite, size: 25),
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
                backgroundColor: FZColors.snackbarRed,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                backgroundColor: FZColors.snackbarRed,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                button: Icon(Icons.close, color: FZColors.primaryWhite, size: 20),
                backgroundColor: FZColors.snackbarRed,
              ),
              SizedBox(height: 20),
              SnackBarsWidget(
                leading: SizedBox(
                  width: 64,
                  height: 64,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(FZMediaNames.sweatWoman),
                  ),
                ),
                button: Text('Button', style: TextStyle(color: FZColors.primaryWhite, fontSize: 14)),
                backgroundColor: FZColors.snackbarRed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SnackBarsWidget extends StatelessWidget {
  final Widget? leading;
  final Widget? button;
  final Color? backgroundColor;

  const SnackBarsWidget({
    Key? key,
    this.leading,
    this.button,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor ?? FZColors.snackbarGrey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (leading != null) leading!,
              const SizedBox(width: 18),
              SizedBox(
                width: MediaQuery.of(context).size.width - 200,
                child: const Text(
                  'Message that takes 2 lines to explain and goes on',
                  style: TextStyle(fontSize: 14, color: FZColors.primaryWhite),
                  softWrap: true,
                ),
              ),
            ],
          ),
          if (button != null) button!,
        ],
      ),
    );
  }
}