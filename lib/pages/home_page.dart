import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_simple_app/backend/oshirish.dart';
import 'package:provider_simple_app/backend/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final providerObyekt = Provider.of<Oshirish>(context);
    final themeProvider = Provider.of<MyTheme>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            providerObyekt.increment();
          },
          child: const Icon(Icons.add)),
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                themeProvider.changeThemeMode();
              },
              icon: Icon(Icons.dark_mode)),
          title: const Text("Provider Example")),
      body: Center(
        child: Text(
          "${providerObyekt.getSon}",
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
