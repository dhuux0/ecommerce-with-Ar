//import 'package:dukaaan/screens/views/detail_page.dart';
//import 'package:dukaaan/screens/widgets/ChipWidget.dart';
import 'package:dukaaan/controlls/d_product_contriller.dart';
import 'package:dukaaan/screens/widgets/card_widget.dart';
import 'package:dukaaan/screens/widgets/d_cardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:dukaaan/constants/const.dart';
import 'package:dukaaan/controlls/itembag_controller.dart';
//import 'package:dukaaan/screens/views/cart_page.dart';
import 'package:dukaaan/screens/views/home_page.dart';
// ignore: unused_import
import 'package:dukaaan/screens/widgets/3dproducts_widget.dart';
import 'package:dukaaan/screens/widgets/AdsBannerWidges.dart';
import 'package:dukaaan/screens/widgets/ArProducts.dart';
import 'package:dukaaan/screens/widgets/categories.dart';
import 'package:dukaaan/screens/widgets/prifile.dart';
import 'package:gap/gap.dart';
//import 'package:gap/gap.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class ShoesARPage extends StatelessWidget {
  const ShoesARPage({super.key});

  get currentIndex => 0;

  @override
  Widget build(BuildContext context) {
    //  final dproducts = ref.watch(d_ProductNotifierprovider);

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
                      builder: (context) => const dCardWidget(
                        productIndex1: 3,
                      ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              // Ads banner section
              const AdsBannerWidget(),
              // Chip section
              // SizedBox(
              //   height: 50,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     children: const [
              //       ChipWidget(
              //         chipLabel: 'All',
              //         Icons: null,
              //       ),
              //       ChipWidget(
              //         chipLabel: 'electonics',
              //         Icons: null,
              //       ),
              //       ChipWidget(
              //         chipLabel: 'fashions',
              //         Icons: null,
              //       ),
              //       ChipWidget(
              //         chipLabel: 'AR_products',
              //         Icons: null,
              //       ),
              //       ChipWidget(
              //         chipLabel: 'furnitures',
              //         Icons: null,
              //       ),
              //       ChipWidget(
              //         chipLabel: 'Camers',
              //         Icons: null,
              //       ),
              //     ],
              //   ),
              // ),
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
                itemCount: 10,
                shrinkWrap: true,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => d_widget(GetIndex: index),
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
                  builder: (context) => const DHomePage(),
                ),
              );
              break;
            case 4:
              //navigate to homepage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
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
