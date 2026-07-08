import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {

  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final String? trailing;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {

    return ListTile(

      onTap: onTap,

      leading: Icon(icon),

      title: Text(title),

      trailing: trailing != null
          ? Text(trailing!)
          : const Icon(Icons.chevron_right),

    );

  }

}