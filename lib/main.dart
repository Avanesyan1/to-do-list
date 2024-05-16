import 'package:flutter/material.dart';
import 'package:to_do_list/pages/login.dart';
import 'package:to_do_list/pages/authpage.dart';
import 'package:to_do_list/pages/signup.dart';
import 'package:to_do_list/pages/task_list_page.dart';
import 'package:to_do_list/theme/theme.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  await Hive.initFlutter();
  // ignore: unused_local_variable
  var box = await Hive.openBox('MyBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final myTheme theme = myTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const MainauthPage(),
        'signup':(context) => const signupPage(),
        'login':(context) => LoginPage(),
        'task_list':(context) => const task_listPage()
      },
      debugShowCheckedModeBanner: false,
      theme: theme.light(),
      darkTheme: theme.dark(),
    );
  }
}