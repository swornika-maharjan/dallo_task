import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_network_library/data_provider.dart';
import 'package:flutterproject/medicalbook/screens/all_categories_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'domains.dart';
import 'network_config.dart';
// import 'dart:io';
// import 'dart:ui';

Future<void> _configureNetworkSettings() async {
  try {
    // Load SSL certificates
    ByteData data = await PlatformAssetBundle().load(
      'assets/ca/lets-encrypt-r3.pem',
    );
    SecurityContext.defaultContext.setTrustedCertificatesBytes(
      data.buffer.asUint8List(),
    );

    // Initialize REST executor
    await RESTExecutor.initialize(config, domains);

    // Initialize SharedPreferences
    await SharedPreferences.getInstance();
  } catch (e) {
    print('Initialize error : $e');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _configureNetworkSettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AllCategoriesScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("AppBAr")));
  }
}
