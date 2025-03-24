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
    return Scaffold(appBar: AppbarComponent(), body: TabBarComponent());
  }
}
