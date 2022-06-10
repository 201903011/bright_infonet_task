import 'package:bright_infonet_task/screens/home_screen.dart';
import 'package:bright_infonet_task/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      // theme: MyTheme.lightTheme(context),
      // darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
