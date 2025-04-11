import 'package:get/get.dart';

class SideBarController extends GetxController {
  final RxList _sideBar = ['About Us', 'Notices', 'Blogs', 'FAQs'].obs;

  List get sideBar => _sideBar.value;
}
