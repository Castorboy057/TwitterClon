import 'package:flutter/material.dart';

class MyDrawerTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;
  const MyDrawerTitle({
    super.key, 
    required this.title, 
    required this.icon, 
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, 
      style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      ),
      leading: Icon(
        icon,
      color: Theme.of(context).colorScheme.primary,),
      onTap: onTap,
    );
  }
}