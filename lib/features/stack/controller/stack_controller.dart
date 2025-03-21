import 'package:flutter/material.dart';
import 'package:flutterproject/features/animatedcontainer/screens/animated_container.dart';
import 'package:flutterproject/features/animatedcontainer/screens/grid_view.dart';
import 'package:flutterproject/features/animatedcontainer/screens/split_screen.dart';
import 'package:flutterproject/features/auth/screens/signup_screen.dart';
import 'package:flutterproject/features/course/screens/course_list_screen.dart';
import 'package:get/get.dart';

class WebsiteController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // Page title
  var pageTitle = "Welcome to DalloTech".obs;

  // List of images
  var images =
      [
        "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZGVza3RvcCUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1496347646636-ea47f7d6b37b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZGVza3RvcCUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1676009547155-32d75ba9d089?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZGVza3RvcCUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1507187632231-5beb21a654a2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGRlc2t0b3AlMjB3YWxscGFwZXJ8ZW58MHx8MHx8fDA%3D",
        "https://plus.unsplash.com/premium_photo-1686617826184-f4188a62c3be?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGRlc2t0b3AlMjB3YWxscGFwZXJ8ZW58MHx8MHx8fDA%3D",
        "https://images.unsplash.com/photo-1466854076813-4aa9ac0fc347?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGRlc2t0b3AlMjB3YWxscGFwZXJ8ZW58MHx8MHx8fDA%3D",
      ].obs;

  // List of items
  var items = ["About Us", "Services", "Portfolio", "Blog", "Contact"].obs;
  var icons =
      [
        Icons.info, // About Us
        Icons.build, // Services
        Icons.work, // Portfolio
        Icons.article, // Blog
        Icons.contact_mail, // Contact
      ].obs;

  // Animation Controller
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(animationController);
    animationController.forward(); // Start animation
  }

  void navigateToPage(String page) {
    switch (page) {
      case 'About Us':
        Get.off(() => SplitScreen());
        break;

      case 'Services':
        Get.off(() => SignupScreen());
        break;
      case 'Portfolio':
        Get.off(() => CourseListScreen());
        break;

      case 'Blog':
        Get.off(() => RandomShapeScreen());
        break;

      case 'Contact':
        Get.off(() => GridViewPage());

      default:
        print('page not found');
    }
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}























// import 'package:flutter/material.dart';
// import 'package:flutterproject/features/animatedcontainer/screens/animated_container.dart';
// import 'package:flutterproject/features/animatedcontainer/screens/grid_view.dart';
// import 'package:flutterproject/features/animatedcontainer/screens/split_screen.dart';
// import 'package:flutterproject/features/auth/screens/signup_screen.dart';
// import 'package:flutterproject/features/course/screens/course_list_screen.dart';
// import 'package:get/get.dart';

// class WebsiteController extends StatefulWidget {
//   @override
//   _WebsiteControllerState createState() => _WebsiteControllerState();
// }

// class _WebsiteControllerState extends State<WebsiteController> with SingleTickerProviderStateMixin {
//   var pageTitle = "Welcome to DalloTech".obs;
//   var images =
//       [
//         "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZGVza3RvcCUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D",
//         "https://images.unsplash.com/photo-1496347646636-ea47f7d6b37b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZGVza3RvcCUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D",
//         "https://plus.unsplash.com/premium_photo-1676009547155-32d75ba9d089?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZGVza3RvcCUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D",
//         "https://images.unsplash.com/photo-1507187632231-5beb21a654a2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGRlc2t0b3AlMjB3YWxscGFwZXJ8ZW58MHx8MHx8fDA%3D",
//         "https://plus.unsplash.com/premium_photo-1686617826184-f4188a62c3be?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGRlc2t0b3AlMjB3YWxscGFwZXJ8ZW58MHx8MHx8fDA%3D",
//         "https://images.unsplash.com/photo-1466854076813-4aa9ac0fc347?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGRlc2t0b3AlMjB3YWxscGFwZXJ8ZW58MHx8MHx8fDA%3D",
//       ].obs;

//   var items = ["About Us", "Services", "Portfolio", "Blog", "Contact"].obs;
//   var icons =
//       [
//         Icons.info, // About Us
//         Icons.build, // Services
//         Icons.work, // Portfolio
//         Icons.article, // Blog
//         Icons.contact_mail, // Contact
//       ].obs;


//       // Animation Controller
//   late AnimationController animationController;
//   late Animation<double> fadeAnimation;


  
//   @override
//   void initState() {
//     super.initState();
//     animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );

//     fadeAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(animationController);
//     animationController.forward(); // Start animation
//   }

//   void navigateToPage(String page) {
//     switch (page) {
//       case 'About Us':
//         Get.off(() => SplitScreen());
//         break;

//       case 'Services':
//         Get.off(() => SignupScreen());
//         break;
//       case 'Portfolio':
//         Get.off(() => CourseListScreen());
//         break;

//       case 'Blog':
//         Get.off(() => RandomShapeScreen());
//         break;

//       case 'Contact':
//         Get.off(() => GridViewPage());

//       default:
//         print('page not found');
//     }
//   }

//   @override
//   void dispose() {
//     animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(); // Replace with your widget tree
//   }
// }
