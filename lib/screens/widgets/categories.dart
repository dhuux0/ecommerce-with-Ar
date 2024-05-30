import 'package:dukaaan/constants/const.dart';
import 'package:dukaaan/controlls/itembag_controller.dart';
import 'package:dukaaan/screens/views/cart_page.dart';
import 'package:dukaaan/screens/widgets/ArProducts.dart';
import 'package:dukaaan/screens/widgets/prifile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});
  get currentIndex => 1;

  // const CategoriesPage({Key? key}) : super(key: key);
  // final currentIndex = ref.watch(currentIndexProvider);

  @override
  Widget build(BuildContext context) {
    //final currentIndex=ref.watch(proudctNotifierProvider);
    // ignore: unused_local_variable
    // final products = ref.watch(proudctNotifierProvider);
    // final currentIndex = ref.watch(currentIndexProvider);

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
                      builder: (context) => const CardPage(),
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
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          CategoryItem(
            categoryName: 'Electronics',
            onTap: () {
              // Navigate to the products page for Electronics category
              // Replace the push navigation with your desired navigation logic
            },
          ),
          CategoryItem(
            categoryName: 'Clothing',
            onTap: () {
              // Navigate to the products page for Clothing category
              // Replace the push navigation with your desired navigation logic
            },
          ),
          CategoryItem(
            categoryName: 'Home & Kitchen',
            onTap: () {
              // Navigate to the products page for Home & Kitchen category
              // Replace the push navigation with your desired navigation logic
            },
          ),
          // Add more CategoryItems for additional categories as needed
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          //currentIndex = index;
          switch (index) {
            case -0:
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

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final VoidCallback onTap;

  const CategoryItem({
    required this.categoryName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            categoryName,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
