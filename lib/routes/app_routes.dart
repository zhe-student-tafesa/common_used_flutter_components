import 'package:common_used_flutter_components/modules/avatars/views/avatars_page.dart';
import 'package:common_used_flutter_components/modules/badges/views/badges_page.dart';
import 'package:common_used_flutter_components/modules/bottom_app_bar/views/bottom_app_bar_page.dart';
import 'package:common_used_flutter_components/modules/buttons/views/buttons_page.dart';
import 'package:common_used_flutter_components/modules/dividers/views/divider_page.dart';
import 'package:common_used_flutter_components/modules/dropdowns/views/drop_down_page.dart';
import 'package:common_used_flutter_components/modules/gallerys/views/gallerys_page.dart';
import 'package:common_used_flutter_components/modules/home/views/home_page.dart';
import 'package:common_used_flutter_components/modules/lists/views/lists_page.dart';
import 'package:common_used_flutter_components/modules/navigation_bar/views/icon_3_no_label_page.dart';
import 'package:common_used_flutter_components/modules/navigation_bar/views/icon_4_no_label_page.dart';
import 'package:common_used_flutter_components/modules/navigation_bar/views/icon_5_no_label_page.dart';
import 'package:common_used_flutter_components/modules/navigation_bar/views/navigation_bar_page.dart';
import 'package:common_used_flutter_components/modules/navigation_drawer/views/navigation_drawer_page.dart';
import 'package:common_used_flutter_components/modules/progress_indicators/views/progress_indicators_page.dart';
import 'package:common_used_flutter_components/modules/sliders/views/sliders_page.dart';
import 'package:common_used_flutter_components/modules/snackbars/views/snackbars_page.dart';
import 'package:common_used_flutter_components/modules/switch/views/switch_page.dart';
import 'package:common_used_flutter_components/modules/tabs/views/primary_tabs_page.dart';
import 'package:common_used_flutter_components/modules/tabs/views/secondary_tabs_page.dart';
import 'package:common_used_flutter_components/modules/tabs/views/tabs_page.dart';
import 'package:common_used_flutter_components/modules/text_fields/views/text_fields_page.dart';
import 'package:common_used_flutter_components/modules/time_picker/views/time_picker_page.dart';
import 'package:common_used_flutter_components/modules/tool_app_bars/views/app_bar_center_aligned_page.dart';
import 'package:common_used_flutter_components/modules/tool_app_bars/views/app_bar_large_page.dart';
import 'package:common_used_flutter_components/modules/tool_app_bars/views/app_bar_medium_page.dart';
import 'package:common_used_flutter_components/modules/tool_app_bars/views/app_bar_small_page.dart';
import 'package:common_used_flutter_components/modules/tool_app_bars/views/tool_app_bars_page.dart';
import 'package:flutter/material.dart';

import '../modules/date_picker/views/date_picker_page.dart';
import '../modules/dialogs/views/dialogs_page.dart';
import '../modules/navigation_bar/views/icon_3_has_label_page.dart';
import '../modules/navigation_bar/views/icon_4_has_label_page.dart';
import '../modules/navigation_bar/views/icon_5_has_label_page.dart';
import '../modules/selections/views/selection_page.dart';

class FZRoutePath {
  final String name;
  final Map<String, dynamic>? parameters;
  final Widget widget;

  FZRoutePath.home({this.parameters})
      : name = 'home',
        widget = const HomePage();

  FZRoutePath.avatars({this.parameters})
      : name = 'avatars',
        widget = const AvatarsPage();

  FZRoutePath.buttons({this.parameters})
      : name = 'buttons',
        widget = const ButtonsPage();

  FZRoutePath.selections({this.parameters})
      : name = 'selections',
        widget = const SelectionPage();

  FZRoutePath.dataPicker({this.parameters})
      : name = 'dataPicker',
        widget = const DatePickerPage();

  FZRoutePath.tabs({this.parameters})
      : name = 'tabs',
        widget = const TabsPage();

  FZRoutePath.primaryTabs({this.parameters})
      : name = 'primaryTabs',
        widget = const PrimaryTabsPage();

  FZRoutePath.secondaryTabs({this.parameters})
      : name = 'secondaryTabs',
        widget = const SecondaryTabsPage();

  FZRoutePath.timePicker({this.parameters})
      : name = 'timePicker',
        widget = const TimePickerPage();

  FZRoutePath.toolAppBars({this.parameters})
      : name = 'toolAppBars',
        widget = const ToolAppBarsPage();

  FZRoutePath.appBarCenterAligned({this.parameters})
      : name = 'appBarCenterAligned',
        widget = const AppBarCenterAlignedPage();

  FZRoutePath.appBarSmall({this.parameters})
      : name = 'appBarSmall',
        widget = const AppBarSmallPage();

  FZRoutePath.appBarMedium({this.parameters})
      : name = 'appBarMedium',
        widget = const AppBarMediumPage();

  FZRoutePath.appBarLarge({this.parameters})
      : name = 'appBarLarge',
        widget = const AppBarLargePage();

  FZRoutePath.dialogs({this.parameters})
      : name = 'dialogs',
        widget = const DialogsPage();

  FZRoutePath.textFields({this.parameters})
      : name = 'textFields',
        widget = const TextFieldsPage();

  FZRoutePath.dividers({this.parameters})
      : name = 'dividers',
        widget = const DividerPage();

  FZRoutePath.dropdowns({this.parameters})
      : name = 'dropdowns',
        widget = const DropdownsPage();

  FZRoutePath.switches({this.parameters})
      : name = 'switches',
        widget = const SwitchPage();

  FZRoutePath.snackbars({this.parameters})
      : name = 'snackbars',
        widget = const SnackBarsPage();

  FZRoutePath.sliders({this.parameters})
      : name = 'sliders',
        widget = const SlidersPage();

  FZRoutePath.progressIndicators({this.parameters})
      : name = 'progressIndicators',
        widget = const ProgressIndicatorsPage();

  FZRoutePath.galleries({this.parameters})
      : name = 'galleries',
        widget = const GallerysPage();

  FZRoutePath.lists({this.parameters})
      : name = 'lists',
        widget = const ListsPage();

  FZRoutePath.navigationBar({this.parameters})
      : name = 'navigationBar',
        widget = const NavigationBarPage();

  FZRoutePath.icon3HasLabel({this.parameters})
      : name = 'icon3HasLabel',
        widget = const Icon3HasLabelPage();

  FZRoutePath.icon4HasLabel({this.parameters})
      : name = 'icon4HasLabel',
        widget = const Icon4HasLabelPage();

  FZRoutePath.icon5HasLabel({this.parameters})
      : name = 'icon5HasLabel',
        widget = const Icon5HasLabelPage();

  FZRoutePath.icon3NoLabel({this.parameters})
      : name = 'icon3NoLabel',
        widget = const Icon3NoLabelPage();

  FZRoutePath.icon4NoLabel({this.parameters})
      : name = 'icon4NoLabel',
        widget = const Icon4NoLabelPage();

  FZRoutePath.icon5NoLabel({this.parameters})
      : name = 'icon5NoLabel',
        widget = const Icon5NoLabelPage();

  FZRoutePath.navigationDrawer({this.parameters})
      : name = 'navigationDrawer',
        widget = const NavigationDrawerPage();

  FZRoutePath.badges({this.parameters})
      : name = 'badges',
        widget = const BadgesPage();
  
  FZRoutePath.bottomAppBar({this.parameters})
      : name = 'bottomAppBar',
        widget = const BottomAppBarPage();
}
