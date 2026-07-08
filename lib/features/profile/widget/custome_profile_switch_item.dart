import 'package:flutter/material.dart';

class ProfileSwitchItem extends StatelessWidget {

  final bool value;
  final ValueChanged<bool> onChanged;

  const ProfileSwitchItem({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {

    return SwitchListTile(

      value: value,

      onChanged: onChanged,

      title: const Text("الإشعارات"),

      secondary: const Icon(Icons.notifications_none),

    );

  }

}