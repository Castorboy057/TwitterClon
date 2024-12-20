import 'package:twitterclon/components/my_drawer_title.dart';
import 'package:twitterclon/pages/settings_page.dart';
import 'package:twitterclon/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  final _auth = AuthService();

  void logout(){
    _auth.logout();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Icon(Icons.person,
                size: 72,
                color: Theme.of(context).colorScheme.primary,),
              ),
              Divider(color: Theme.of(context).colorScheme.secondary,),

              const SizedBox(height: 10,),


              MyDrawerTitle(
                title: "H O M E",
                icon: Icons.home,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              MyDrawerTitle(
                title: "S E T T I N G S",
                icon: Icons.settings,
                onTap: () {
                   Navigator.pop(context);
          
                  Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                  );
                }
              ),

              const Spacer(),

              MyDrawerTitle(
                title: "L O G O U T", 
                icon: Icons.logout, 
                onTap: logout,
                )
            ],
          ),
        ),
      ),
      );
  }
}