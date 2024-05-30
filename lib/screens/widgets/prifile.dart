import 'package:dukaaan/constants/const.dart';
import 'package:dukaaan/screens/widgets/ArProducts.dart';
import 'package:dukaaan/screens/widgets/categories.dart';
import 'package:flutter/material.dart';

//final products = ref.watch(proudctNotifierProvider);
//final currentIndex = ref.watch(currentIndexProvider);

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  get currentIndex => 0;

  @override
  Widget build(BuildContext context) {
    const userName = 'Muu dey'; // Replace with actual name
    const userEmail = 'Muudey@example.com'; // Replace with actual email
    const userProfilePic =
        'assets/products/air.jpeg'; // Replace with actual profile picture URL

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: const Text('Details Page'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.local_mall),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Picture Section
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(userProfilePic),
              ),
            ),
            const SizedBox(height: 10.0),

            // User Name Section
            const Text(
              userName,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),

            // User Email Section
            const Text(
              userEmail,
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            const SizedBox(height: 20.0),

            // User Information Section (Expandable)
            const ExpansionTile(
              title: Text('User Information'),
              children: [
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone Number'),
                  subtitle: Text(
                      '(252) 618-233227'), // Replace with actual phone number
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Location'),
                  subtitle: Text('mogadisho'), // Replace with actual location
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("sex"),
                  subtitle: Text("male"),
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text("accubation"),
                  subtitle: Text("student"),
                )
              ],
            ),

            // Edit Profile Button
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       // Handle edit profile button click
            //       // Navigate to edit profile screen (if applicable)
            //     },
            //     child: const Text('Edit Profile'),
            //   ),
            // ),
          ],
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
