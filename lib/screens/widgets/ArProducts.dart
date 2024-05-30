// import 'package:dukaaan/constants/const.dart';
// import 'package:dukaaan/controlls/itembag_controller.dart';
// import 'package:dukaaan/data/products.dart';
// import 'package:dukaaan/screens/views/cart_page.dart';
// import 'package:dukaaan/screens/widgets/AdsBannerWidges.dart';
// import 'package:dukaaan/screens/widgets/Fashion_ar.dart';
// import 'package:dukaaan/screens/widgets/Furniture_ar.dart';
// import 'package:dukaaan/screens/widgets/d_cardWidget.dart';
// import 'package:dukaaan/screens/widgets/shoes_ar.dart';
// import 'package:flutter/material.dart';

// class ARProductsPage extends StatelessWidget {
//   const ARProductsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: kSecondaryColor,
//         title: Center(
//           child: Image.asset(
//             "assets/images/logo3.png",
//             width: 100,
//             height: 95,
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20, top: 10),
//             child: Badge(
//               label: Text(itemBag.length.toString()),
//               child: IconButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const CardPage(),
//                     ),
//                   );
//                 },
//                 icon: const Icon(
//                   Icons.local_mall,
//                   size: 24,
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const AdsBannerWidget(),
//             //const productCardWidget(),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the fashion AR page
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const FashionARPage(),
//                   ),
//                 );
//               },
//               child: const Text('Fashion AR Discoverey'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the furniture AR page
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const FurnitureARPage(),
//                   ),
//                 );
//               },
//               child: const Text('Furniture AR Discoverey'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the shoes AR page
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const ShoesARPage(),
//                   ),
//                 );
//               },
//               child: const Text('Shoes AR Discoverey'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: non_constant_identifier_names

import 'package:dukaaan/constants/const.dart';
import 'package:dukaaan/controlls/itembag_controller.dart';
import 'package:dukaaan/controlls/product_controller.dart';
import 'package:dukaaan/screens/views/d_cart_page.dart';
import 'package:dukaaan/screens/views/d_detail_pahe.dart';
import 'package:dukaaan/screens/views/detail_page.dart';
import 'package:dukaaan/screens/views/home_page.dart';
import 'package:dukaaan/screens/widgets/AdsBannerWidges.dart';
import 'package:dukaaan/screens/widgets/ArProducts.dart';
import 'package:dukaaan/screens/widgets/ChipWidget.dart';
// import 'package:dukaaan/screens/widgets/ar_products';
import 'package:dukaaan/screens/widgets/categories.dart';
import 'package:dukaaan/screens/widgets/d_cardWidget.dart';
import 'package:dukaaan/screens/widgets/prifile.dart';
// import 'package:dukaaan/screens/widgets/prifile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

// import '../widgets/ads_banner_widget.dart';
import '../widgets/card_widget.dart';
//import 'cart_page.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class DHomePage extends ConsumerWidget {
  const DHomePage({super.key});
  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(proudctNotifierProvider);
    final currentIndex = ref.watch(currentIndexProvider);
    //int state = 0;

    final itemBag = ref.watch(itemBagProvider);

    //var state=0;
    // final state = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Center(
          child: Image.asset(
            "assets/images/logo3.png",
            width: 100,
            height: 95,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Badge(
              label: Text(itemBag.length.toString()),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DCardPage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.local_mall,
                  size: 24,
                ),
              ),
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              // Ads banner section
              const AdsBannerWidget(),
              // Chip section
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    ChipWidget(
                      chipLabel: 'All',
                      Icons: null,
                    ),
                    ChipWidget(
                      chipLabel: 'electonics',
                      Icons: null,
                    ),
                    ChipWidget(
                      chipLabel: 'fashions',
                      Icons: null,
                    ),
                    ChipWidget(
                      chipLabel: 'AR_products',
                      Icons: null,
                    ),
                    ChipWidget(
                      chipLabel: 'furnitures',
                      Icons: null,
                    ),
                    ChipWidget(
                      chipLabel: 'Camers',
                      Icons: null,
                    ),
                  ],
                ),
              ),
              // Hot sales section
              const Gap(12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hot Sales', style: AppTheme.kHeadingOne),
                  Text(
                    'See all',
                    style: AppTheme.kSeeAllText,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                width: double.infinity,
                height: 300,
                child: ListView.builder(
                  padding: const EdgeInsets.all(4),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      dCardWidget(productIndex1: index),
                ),
              ),
              // Featured products
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Featured Products', style: AppTheme.kHeadingOne),
                  Text(
                    'See all',
                    style: AppTheme.kSeeAllText,
                  ),
                ],
              ),
              MasonryGridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                shrinkWrap: true,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DDetailsPage(getIndex: index),
                    ),
                  ),
                  child: SizedBox(
                    height: 250,
                    child: dCardWidget(productIndex1: index),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          //currentIndex = index;
          switch (index) {
            case 0:
              // Navigate to Home page
              break;
            case 1:
              // Navigate to Favorite page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CategoriesPage()),
              );
              break;
            case 2:
              // Navigate to Profile page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
              break;
            case 3:
              // Navigate to AR Products page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
              break;
            case 4:
            // Navigate to login for testing
          }
        },
        selectedItemColor: KnavColor,
        unselectedItemColor: KnavColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'categories',
            // activeIcon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
            activeIcon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch),
            label: 'AR_PRODUCTS',
            activeIcon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
