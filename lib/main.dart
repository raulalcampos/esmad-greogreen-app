import 'package:flutter/material.dart';
import 'package:gg/screens/forgetpassword.dart';
import 'package:gg/screens/info_page.dart';
import 'package:gg/widgets/loading.dart';
import 'screens/contacts.dart';
import 'screens/descrition.dart';
import 'screens/edit_notification.dart';
import 'screens/firstscreen.dart';
import 'screens/forgetpassword.dart';
import 'screens/help_us.dart';
import 'screens/informer.dart';
import 'screens/location.dart';
import 'screens/login.dart';
import 'screens/notification.dart';
import 'screens/profile.dart';
import 'screens/security.dart';
import 'screens/user_info.dart';
import 'widgets/bottomnenu.dart';

main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => firstScreen(),
        '/login': (context) => login(),
        '/faq':(context) => InfoPage(),
        '/forgetpassword':(context) => forgetPassword(),
        '/loadingscreen':(context) => loadingScreen(),
        '/home':(context) => BottomMenu(),
        '/contact':(context) => ContactPage(),
        '/description':(context) => Descristion(),
        '/informer':(context) => InformerPage(),
        '/notifications':(context) => NotificationPage(),
        '/comunnity':(context) => HelpUsPage(),
        '/edit':(context) => Profile(),
        '/edit/userinfo':(context) => UserInfo(),
        '/edit/security':(context) => Security(),
        '/edit/notifications':(context) => EditNotification(),
      },
    );
  }
}