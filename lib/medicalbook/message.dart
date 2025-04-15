// import 'package:flutter/material.dart';
// import 'package:flutter_network_library/flutter_network_library.dart';
// import 'package:flutterproject/theme/dt_color.dart';
// import 'package:flutterproject/theme/dt_styles.dart';
// import 'package:get/get.dart';
// // import 'package:jwt_decoder/jwt_decoder.dart';
// // import 'package:sam_ecommerce_app/features/account/controller/dt_profile_controller.dart';
// // import 'package:sam_ecommerce_app/features/home/controllers/dt_home_screen_controller.dart';
// // import 'package:sam_ecommerce_app/features/routes/dt_routes.dart';
// // import 'package:sam_ecommerce_app/generics/components/component_wrapper.dart';
// // import 'package:sam_ecommerce_app/generics/components/dt_product_card_component.dart';
// // import 'package:sam_ecommerce_app/generics/components/dt_referral_link_component.dart';
// // import 'package:sam_ecommerce_app/util/dt_color.dart';
// // import 'package:sam_ecommerce_app/util/dt_styles.dart';
// // import 'package:step_progress_indicator/step_progress_indicator.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   // final DTHomeScreenController controller = Get.put(DTHomeScreenController());
//   // final DTProfileScreenController profileController =
//   //     Get.put(DTProfileScreenController());

//   bool checkTokenHasExpired() {
//     final token = NetworkRequestMaker.authenticator?.getAccessToken();
//     if (token == null) {
//       return true;
//     }
//     bool hasExpired = JwtDecoder.isExpired(token);
//     return hasExpired;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: DTColor.booksBackground,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 70),

//             // Category buttons
//             SizedBox(
//               height: 47,
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return _buildCategoryButton(
//                     text: 'New arrivals',
//                     iconPath: 'assets/images/new/newarrivals.png',
//                     width: 115,
//                   );
//                 },
//               ),
//             ),

//             const SizedBox(height: 15),

//             // Featured section
//             _buildSection(
//                 title: 'Featured',
//                 iconPath: 'assets/images/new/featured.png',
//                 showProducts: true,
//                 onTap: () {
//                   Get.toNamed(DTRoutes.allFeaturedProductScreen);
//                 }),

//             const SizedBox(height: 20),

//             // Black Friday section
//             _buildBlackFridaySection(),

//             const SizedBox(height: 20),

//             // New Arrivals section
//             _buildSection(
//               title: 'New Arrivals',
//               iconPath: 'assets/images/new/newarrivals.png',
//               showProducts: true,
//             ),

//             const SizedBox(height: 20),

//             // Best Sellers section
//             _buildSection(
//               title: 'Best Sellers',
//               iconPath: 'assets/images/new/bestsellers.png',
//               showProducts: true,
//             ),

//             const SizedBox(height: 10),

//             // Shop Collections section
//             _buildShopCollectionsSection(context),
//             launchingSoonComponent(),
//             SizedBox(height: 20),
//             // Equipment section
//             _buildSection(
//               title: 'Equipment',
//               showProducts: true,
//             ),
//             SizedBox(height: 20),
//             //referral section
//             if (!checkTokenHasExpired()) ...{
//               buildreferalCard(),
//             },
//             Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Obx(() {
//                   return Wrap(
//                     spacing: 12,
//                     runSpacing: 12,
//                     children: controller.options.map((option) {
//                       final title = option['title']!;
//                       final iconPath = option['icon']!;

//                       return GestureDetector(
//                         onTap: () => () {},
//                         child: ComponentWrapper(
//                           width: MediaQuery.of(context).size.width * 0.42,
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 12, horizontal: 10),
//                           child: Row(
//                             children: [
//                               Image.asset(iconPath, height: 24, width: 24),
//                               const SizedBox(width: 10),
//                               Flexible(
//                                 child: Text(
//                                   title,
//                                   style: header5.copyWith(
//                                     color: DTColor.bookTitleBlack,
//                                   ),
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     }).toList(),
//                   );
//                 }))
//           ],
//         ),
//       ),
//     );
//   }

//   // Category button widget
//   Widget _buildCategoryButton({
//     required String text,
//     String? iconPath,
//     double? width,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.all(7),
//       child: ComponentWrapper(
//         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//         borderColor: DTColor.borderGrey,
//         radius: 5,
//         borderWidth: 1,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               text,
//               style: header6.copyWith(
//                 color: DTColor.academyBlue,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             if (iconPath != null) ...{
//               const SizedBox(width: 5),
//               Image.asset(iconPath, height: 90, width: 16),
//             }
//           ],
//         ),
//       ),
//     );
//   }

//   // Section header with title and view all
//   Widget _buildSection({
//     required String title,
//     String? iconPath,
//     required bool showProducts,
//     String? timerText,
//     Color? timerColor,
//     VoidCallback? onTap,
//   }) {
//     return Column(
//       children: [
//         if (timerText == null)
//           buildSectionHeader(
//             title: title,
//             iconPath: iconPath,
//             onTap: onTap,
//           ),
//         if (timerText != null)
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(title,
//                   style: header4.copyWith(
//                       fontWeight: FontWeight.w700, color: DTColor.academyBlue)),
//               Row(
//                 children: [
//                   Text('Offer ends in',
//                       style: header7.copyWith(
//                           fontWeight: FontWeight.w600,
//                           color: DTColor.academyBlue)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   if (iconPath != null)
//                     Image.asset(iconPath, height: 90, width: 16),
//                   const SizedBox(width: 5),
//                   Text(timerText,
//                       style: header7.copyWith(
//                           fontWeight: FontWeight.w700, color: DTColor.red)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text('View all',
//                       style: header6.copyWith(
//                           fontWeight: FontWeight.w700, color: DTColor.orange)),
//                   SizedBox(width: 5),
//                   Icon(
//                     Icons.arrow_forward_ios_outlined,
//                     size: 14,
//                     color: DTColor.orange,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         if (showProducts)
//           SizedBox(
//             height: 278,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 4,
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               itemBuilder: (context, index) => DTProductCardComponent(),
//             ),
//           ),
//       ],
//     );
//   }

//   // Black Friday Section
//   Widget _buildBlackFridaySection() {
//     return Container(
//       width: 400,
//       decoration: const BoxDecoration(color: DTColor.white),
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             Image.asset('assets/images/new/blackfriday.png'),
//             const SizedBox(height: 10),
//             Text(
//               'Black Friday Mega Deals – Shop & Save Big! 🛍️',
//               style: header5.copyWith(
//                 fontWeight: FontWeight.w700,
//                 color: DTColor.academyBlue,
//               ),
//             ),
//             _buildSection(
//               title: 'Hurry up!',
//               iconPath: 'assets/images/new/clock.png',
//               showProducts: true,
//               timerText: '05: 20: 20:20',
//               timerColor: DTColor.red,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Collection Card Widget
//   Widget _buildCollectionCard({
//     required String title,
//     required String imagePath,
//     required double width,
//     required double height,
//     bool imageOnTop = true,
//   }) {
//     return Container(
//       height: height,
//       width: width,
//       decoration: BoxDecoration(
//         color: DTColor.greyLite,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           if (imageOnTop) ...[
//             const SizedBox(height: 15),
//             Image.asset(
//               imagePath,
//               height: 73,
//               width: imageOnTop ? 93 : 165,
//             ),
//             const SizedBox(height: 5),
//           ],
//           Text(
//             title,
//             style: header5.copyWith(
//               color: DTColor.academyBlue,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Shop now',
//                 style: header7.copyWith(
//                   color: DTColor.orange,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//               const SizedBox(width: 5),
//               Image.asset(
//                 'assets/images/new/arrow.png',
//                 height: 10,
//                 width: 10,
//               ),
//             ],
//           ),
//           if (!imageOnTop) ...[
//             const SizedBox(height: 15),
//             Image.asset(
//               imagePath,
//               height: 73,
//               width: 165,
//             ),
//           ],
//         ],
//       ),
//     );
//   }

//   // Shop Collections Section
//   Widget _buildShopCollectionsSection(BuildContext context) {
//     return Obx(() => Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Text('Shop by collections',
//                     style: header4.copyWith(
//                         fontWeight: FontWeight.w700,
//                         color: DTColor.academyBlue)),
//               ),
//               SizedBox(height: 10),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: controller.categories.map((category) {
//                     return _buildCategoryButton(
//                       text: category['text']!,
//                     );
//                   }).toList(),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     _buildCollectionCard(
//                       title: 'Book Bundles',
//                       imagePath: 'assets/images/new/pharmaidol.png',
//                       width: 130,
//                       height: 150,
//                       imageOnTop: true,
//                     ),
//                     const SizedBox(width: 20),
//                     _buildCollectionCard(
//                       title: 'Medical Equipment',
//                       imagePath: 'assets/images/new/thermo.png',
//                       width: 200,
//                       height: 150,
//                       imageOnTop: false,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }

//   // Section header with title and view all
//   Widget launchingSoonComponent() {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//           child: SizedBox(
//             height: 40,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Launching soon!",
//                     style: header4.copyWith(
//                         fontWeight: FontWeight.w700,
//                         color: DTColor.academyBlue)),
//                 InkWell(
//                   onTap: () => print("View all tapped"),
//                   child: Row(
//                     children: [
//                       Text('View all',
//                           style: header6.copyWith(
//                               fontWeight: FontWeight.w700,
//                               color: DTColor.orange)),
//                       SizedBox(width: 5),
//                       Icon(
//                         Icons.arrow_forward_ios_outlined,
//                         size: 14,
//                         color: DTColor.orange,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         ListView.builder(
//             scrollDirection: Axis.vertical,
//             itemCount: 3,
//             physics: NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             itemBuilder: (context, index) => ComponentWrapper(
//                   padding: const EdgeInsets.all(10),
//                   child: Row(
//                     children: [
//                       Image.asset("assets/images/new/loksewa.png",
//                           height: 115, width: 92),
//                       SizedBox(width: 10),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               height: 20,
//                               width: 50,
//                               decoration: BoxDecoration(
//                                 color: DTColor.green,
//                                 borderRadius: BorderRadius.circular(4),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   '8% OFF',
//                                   style: header8.copyWith(
//                                     color: DTColor.white,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               'Loksewa Aayog Pharma idol for Pharmacy Officers',
//                               style: header5.copyWith(
//                                 color: DTColor.academyBlue,
//                                 fontWeight: FontWeight.w700,
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Row(
//                               children: [
//                                 Text(
//                                   'Nrs. 1500.00 ',
//                                   style: header5.copyWith(
//                                     color: DTColor.blueDark,
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                                 SizedBox(width: 5),
//                                 Text(
//                                   'Nrs. 2,720.00 ',
//                                   style: header8.copyWith(
//                                       color: DTColor.assetGrey,
//                                       decoration: TextDecoration.lineThrough),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 5),
//                             Row(
//                               children: [
//                                 Text(
//                                   'Booking Limit: 20',
//                                   style: header8.copyWith(
//                                     color: DTColor.blueDark,
//                                   ),
//                                 ),
//                                 SizedBox(width: 90),
//                                 Text('10 left',
//                                     style: header8.copyWith(
//                                         color: DTColor.assetGrey)),
//                               ],
//                             ),
//                             SizedBox(height: 4),
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.8,
//                               child: StepProgressIndicator(
//                                 totalSteps: 20,
//                                 currentStep: 15,
//                                 size: 6,
//                                 padding: 0,
//                                 selectedColor: Colors.yellow,
//                                 unselectedColor: Colors.cyan,
//                                 roundedEdges: Radius.circular(10),
//                                 selectedGradientColor: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [DTColor.green, DTColor.green],
//                                 ),
//                                 unselectedGradientColor: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     DTColor.borderGrey,
//                                     DTColor.borderGrey
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 )),
//       ],
//     );
//   }

//   Widget buildSectionHeader({
//     required String title,
//     String? iconPath,
//     Color? titleColor,
//     VoidCallback? onTap,
//   }) {
//     return ComponentWrapper(
//         padding: EdgeInsets.symmetric(horizontal: 15),
//         radius: 0,
//         child: SizedBox(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Text(title,
//                       style: header4.copyWith(
//                           fontWeight: FontWeight.w700,
//                           color: DTColor.academyBlue)),
//                   const SizedBox(width: 5),
//                   if (iconPath != null)
//                     Image.asset(iconPath, height: 90, width: 16),
//                 ],
//               ),
//               InkWell(
//                 onTap: onTap ?? () => print("View all tapped"),
//                 child: Row(
//                   children: [
//                     Text('View all',
//                         style: header6.copyWith(
//                             fontWeight: FontWeight.w700,
//                             color: DTColor.orange)),
//                     SizedBox(width: 5),
//                     Icon(
//                       Icons.arrow_forward_ios_outlined,
//                       size: 14,
//                       color: DTColor.orange,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
