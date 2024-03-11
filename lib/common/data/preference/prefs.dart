import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/common/data/preference/item/nullable_preference_item.dart';
import 'package:fast_app_base/common/data/preference/item/rx_preference_item.dart';
import 'package:fast_app_base/common/theme/custom_theme.dart';

import 'item/preference_item.dart';

class Prefs {
  static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final isPushOn = PreferenceItem<bool>('isPushOn', false);
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOn', false);
}
