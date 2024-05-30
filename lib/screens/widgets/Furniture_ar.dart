// ignore_for_file: unused_import

import 'package:dukaaan/constants/const.dart';
import 'package:dukaaan/controlls/itembag_controller.dart';
import 'package:dukaaan/screens/views/cart_page.dart';
import 'package:dukaaan/screens/widgets/3dproducts_widget.dart';
import 'package:dukaaan/screens/widgets/AdsBannerWidges.dart';
import 'package:flutter/material.dart';
// ignore: duplicate_ignore
// ignore: unused_import
import 'package:gap/gap.dart';

class FurnitureARPage extends StatelessWidget {
  const FurnitureARPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      // body:
      //     // const AdsBannerWidget(),
      //     const Center(
      //   child: Padding(
      //     padding: EdgeInsets.all(25),
      //     child: Column(children: [
      //       AdsBannerWidget(),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Text('featured products', style: AppTheme.kHeadingOne),
      //           Text(
      //             'See all',
      //             style: AppTheme.kSeeAllText,
      //           ),
      //         ],
      //       ),
      //       Gap(12),
      //       // ignore: avoid_unnecessary_containers
      //       d_widget(),
      //       // MasonryGridView.builder(
      //       //     itemCount: 11,
      //       //     shrinkWrap: true,
      //       //     gridDelegate:
      //       //         const SliverSimpleGridDelegateWithFixedCrossAxisCount(
      //       //             crossAxisCount: 2),
      //       //     itemBuilder: (context, index) => Container(
      //       //           height: 250,
      //       //           child: const productCardWidget(),
      //       //         ))
      //     ]),
      //   ),
      // ),
    );
  }
}
