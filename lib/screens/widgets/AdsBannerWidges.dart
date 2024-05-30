import 'package:dukaaan/constants/const.dart';
import 'package:flutter/material.dart';

class AdsBannerWidget extends StatelessWidget {
  const AdsBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        color: kBlackColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'shelly shopping',
                    style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'waxat naga heleysaan dhaman qalbka shirkada aapple',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kWhiteColor,
                        foregroundColor: kBlackColor,
                      ),
                      onPressed: () {},
                      child: const Text('shop now'))
                ],
              ),
            ),
          ),
          Image.asset("assets/general/landing.png")
        ],
      ),
    );
  }
}
