import 'package:flutter/material.dart';
import '../screens/help_us.dart';
import '../screens/informer.dart';
import '../screens/location.dart';
import '../screens/notification.dart';
import '../screens/profile.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int index = 0;

  final pages = const [
    InformerPage(),
    HelpUsPage(),
    LocationPage(),
    NotificationPage(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[index],
        bottomNavigationBar: NavigationBar(
          animationDuration: const Duration(seconds: 1),
          selectedIndex: index,
          onDestinationSelected: (int index) {
            setState(() {
              this.index = index;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.space_dashboard_outlined,
              ),
              icon: Icon(Icons.space_dashboard_outlined),
              label: 'Informer',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.groups_outlined),
              icon: Icon(Icons.groups_outlined),
              label: 'Help Us',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.location_on_rounded),
              icon: Icon(Icons.location_on_rounded),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.notifications_active_outlined),
              icon: Icon(Icons.notifications_active_outlined),
              label: 'Notification',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person_outline_outlined),
              icon: Icon(Icons.person_outline_outlined),
              label: 'Profile',
            ),
          ],
        ));
  }
}