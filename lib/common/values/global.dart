import 'package:flutter/material.dart';

class GlobalManager with ChangeNotifier {
  static GlobalManager instance = GlobalManager();
  int currentButtonIndex = 0;
}
