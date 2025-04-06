import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  
  //variable used to store the tab items.
  final RxList _tabItems =
      ['Profile', 'Transactions', 'Analytics', 'Password Settings'].obs;

  //getter
  List get tabItems => _tabItems;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
