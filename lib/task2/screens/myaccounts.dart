import 'package:flutter/material.dart';
import 'package:flutterproject/task/component/appbar_component.dart';
import 'package:flutterproject/task2/components/tab_bar_component.dart';

class MyAccountsScreen extends StatefulWidget {
  const MyAccountsScreen({super.key});

  @override
  MyAccountsScreenState createState() => MyAccountsScreenState();
}

class MyAccountsScreenState extends State<MyAccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(),
      endDrawer: Drawer(
        child: Container(
          color: Colors.blue.shade50,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Image.asset('assets/images/drawer.png', height: 24, width: 24),
                const SizedBox(height: 20),
                const Text('My Account'),
                const SizedBox(height: 20),
                const Text('Settings'),
                const SizedBox(height: 20),
                const Text('Logout'),
              ],
            ),
          ),
        ),
      ),
      body: TabBarComponent(),
    );
  }
}
