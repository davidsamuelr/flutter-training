import 'package:flutter/material.dart';
import 'package:root/app_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Switch(
              value: AppController.instance.isDarkTheme,
              onChanged: (value) {
                AppController.instance.changeTheme();
              })),
    );
  }
}
