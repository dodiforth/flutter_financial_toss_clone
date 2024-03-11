import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/common/data/preference/prefs.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '설정'.text.make(),
      ),
      body: ListView(
        children: [
          //Switch
          Obx(
            () => SwitchMenu(
              title: '푸시설정',
              isOn: Prefs.isPushOnRx.get(),
              onChanged: (isOn) {
                Prefs.isPushOnRx.set(isOn);
              },
            ),
          )
          //Slider

          //Date Time

          //Number
        ],
      ),
    );
  }
}
