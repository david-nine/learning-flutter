import 'package:flutter/material.dart';
import 'package:hello_word/app_controller.dart';
import 'package:hello_word/home_controller.dart';
import 'package:hello_word/home_page.dart';
import 'package:hello_word/list_view_page.dart';
import 'package:hello_word/login_page.dart';
import 'package:hello_word/stack_page.dart';
import 'package:hello_word/tinder_layout_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return  MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const LoginPage(),
              '/home': (context) => const HomePage(),
              '/stack': (context) => const StackPage(),
              '/list-view': (context) => const ListViewPage(),
              '/tinder': (context) => const TinderLayoutPage(),
            },
          );
        });
  }
}
