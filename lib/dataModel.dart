import 'package:flutter/material.dart';

class Data {
  final String label;
  final Widget trailing;
  final IconData icon;
  final Color iconBgColor;
  final Color iconColor;


  Data(
      {required this.label,
      required this.trailing,
      required this.icon,
      required this.iconBgColor,
        required this.iconColor
      });
}

List<Data> data = [
  Data(
      label: "Language Setup",
      trailing: Switch(
        thumbColor: MaterialStatePropertyAll(Colors.greenAccent),
        activeTrackColor:Color(0xffadf7c4),
        inactiveTrackColor: Color(0xffadf7c4),
        onChanged: (e) {},
        value: true,
      ),
      iconBgColor: Color(0xffadf7c4),
      icon: Icons.g_translate,
    iconColor: Colors.green
  ),
  Data(
      label: "Change Password",
      trailing: Icon(Icons.arrow_forward_ios, size: 15,),
      iconBgColor: Color(0xffeaaafa),
      icon:Icons.lock,
    iconColor: Colors.deepPurple
  ),
  Data(
      label: "Privacy Policy",
      trailing: Icon(Icons.arrow_forward_ios, size: 15,),
      iconBgColor: Color(0xfffacc91),
      icon:Icons.verified_user,
     iconColor: Colors.orange
  ),
  Data(
      label: "Terms and Conditions",
      trailing: Icon(Icons.arrow_forward_ios, size: 15,),
      iconBgColor: Color(0xffff8f9c),
      icon:Icons.verified_user,
    iconColor: Colors.red
  )
];
