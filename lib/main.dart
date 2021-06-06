import 'package:devfest_app/core/my_provider.dart';
import 'package:devfest_app/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => DarkModeProvider(),
      ),
    ],
    child: MyApp(),
  ));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lightTheme(),
      darkTheme: MyThemes.darkTheme(),
      themeMode: context.watch<DarkModeProvider>().darkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
