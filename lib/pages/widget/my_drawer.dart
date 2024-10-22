import 'package:flutter/material.dart';
import 'package:food_delevery_app/auth/auth_service.dart';
import 'package:food_delevery_app/pages/settings_page.dart';
import 'package:food_delevery_app/pages/widget/my_drawer_tiles.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(){
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // App logo
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // Home list tiles
          MyDrawerTiles(
            text: 'H O M E ',
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          // Settings list tiles
          MyDrawerTiles(
            text: 'S E T T I N G S ',
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
          // Logout list tiles
          const Spacer(),
          MyDrawerTiles(
            text: ' L O G O U T',
            icon: Icons.logout,
            onTap: logout,
          ),
        ],
      ),
    );
  }
}
