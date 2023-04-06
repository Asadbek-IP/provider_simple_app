import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_simple_app/backend/oshirish.dart';
import 'package:provider_simple_app/backend/theme.dart';
import 'package:provider_simple_app/pages/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<MyTheme>(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Oshirish()),
        ChangeNotifierProvider(create: (context) => MyTheme()),
      ],
      child: Consumer<MyTheme>(builder: (context, MyTheme mytheme, _) {
        return MaterialApp(theme: mytheme.getTheme, home: const HomePage());
      }),
    );
  }
}
