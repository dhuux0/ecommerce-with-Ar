// // ignore_for_file: avoid_web_libraries_in_flutter

// // ignore: unused_import
// //import 'dart:html';

// //import 'package:dukaaan/constants/const.dart';
// import 'package:dukaaan/screens/views/detail_page.dart';
// import 'package:dukaaan/screens/widgets/AdsBannerWidges.dart';
// import 'package:dukaaan/screens/widgets/ChipWidget.dart';
// import 'package:dukaaan/screens/widgets/card_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:gap/gap.dart';
// import '../constants/const.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



// class Welcome extends StatelessWidget {
//   const Welcome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: kPrimaryColor,
//       appBar: AppBar(
//         // title: Center(
//         //   child: Image.asset(
//         //     "assets/images/logo3.png",
//         //     width: 70,
//         //     height: 75,
//         //   ),
//         // ),
//         title: Center(
//           child: SvgPicture.asset(
//             "assets/general/store_brand_white.svg",
//             color: kWhiteColor,
//             width: 170,
//           ),
//         ),
//         backgroundColor: kPrimaryColor,
//         actions: [
//           Padding(
//               padding: const EdgeInsets.only(right: 10),
//               child: IconButton(
//                   onPressed: () {}, icon: const Icon(Icons.local_mall)))
//         ],
//       ),
//       drawer: Drawer(
//         child: Container(
//           color: Colors.white,
//         ),
//       ),

//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(25),
//           child: Column(
//             children: [
//               // adds baner
//               const AdsBannerWidget(),

//               /// // chip section
//               SizedBox(
//                 height: 100,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   shrinkWrap: true,
//                   children: const [
//                     ChipWidget(
//                         chipLabel: "All", Icons: Icon(Icons.mobile_friendly)),
//                     ChipWidget(chipLabel: "fashion", Icons: Icons),
//                     ChipWidget(chipLabel: "Electonics", Icons: Icons),
//                     ChipWidget(chipLabel: "Furniture", Icons: Icons),
//                     ChipWidget(chipLabel: "AR_Shoping", Icons: Icons)
//                   ],
//                 ),
//               ),

//               // hot seles
//               const Gap(8),

//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Hot Selas",
//                     //style: app.headingOne,
//                     style: AppTheme.kHeadingOne,
//                   ),
//                   Text(
//                     "See All",
//                     //style: AppTHeme.seeAll,
//                     style: AppTheme.kSeeAllText,
//                   )
//                 ],
//               ),
//               const Gap(8),
              

//               // Container(
//               //   color: const Color.fromARGB(255, 171, 137, 37),
//               //   width: double.infinity,
//               //   height: 270,
//               //   child: ListView.builder(
//               //     itemCount: 20,
//               //     scrollDirection: Axis.horizontal,
//               //     shrinkWrap: true,
//               //     itemBuilder: (context, index) => Container(
//               //       width: MediaQuery.of(context).size.width * 0.5,
//               //     ),
//               //   ),
//               // )
//               Container(
//                 padding: const EdgeInsets.all(4),
//                 width: double.infinity,
//                 height: 300,
//                 child: ListView.builder(
//                   padding: const EdgeInsets.all(4),
//                   itemCount: 4,
//                   scrollDirection: Axis.horizontal,
//                   shrinkWrap: true,
//                   itemBuilder: (context, index) =>
//                       ProductCardWidget(productIndex: index),
//                 ),
//               ),

//               /// featured
              
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('Featured Products', style: AppTheme.kHeadingOne),
//                   Text(
//                     'See all',
//                     style: AppTheme.kSeeAllText,
//                   ),
//                 ],
//               ),
//               MasonryGridView.builder(
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: products.length,
//                 shrinkWrap: true,
//                 gridDelegate:
//                     const SliverSimpleGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2),
//                 itemBuilder: (context, index) => GestureDetector(
//                   onTap: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DetailsPage(getIndex: index),
//                       )),
//                   child: SizedBox(
//                     height: 250,
//                     child: ProductCardWidget(productIndex: index),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),

//        bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex,
//         onTap: (value) =>
//             ref.read(currentIndexProvider.notifier).update((state) => value),
//         selectedItemColor: kPrimaryColor,
//         unselectedItemColor: kSecondaryColor,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//             activeIcon: Icon(Icons.home_filled),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_outline),
//             label: 'Favorite',
//             activeIcon: Icon(Icons.favorite),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.location_on_outlined),
//             label: 'Location',
//             activeIcon: Icon(Icons.location_on),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications_outlined),
//             label: 'Notification',
//             activeIcon: Icon(Icons.notifications),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Profile',
//             activeIcon: Icon(Icons.person),
//           ),
//         ],
//       ),
//     );
//   }
// }
