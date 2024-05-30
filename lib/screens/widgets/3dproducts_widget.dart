// ignore_for_file: camel_case_types

import 'package:dukaaan/constants/const.dart';
import 'package:dukaaan/data/d_products_model.dart';
// import 'package:dukaaan/data/products.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class d_widget extends StatelessWidget {
  const d_widget({
    super.key,
    // ignore: non_constant_identifier_names
    required GetIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      height: 280,
      width: double.infinity,
      // color: Colors.blueGrey,
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          // color: Colors.blueGrey,

          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2, 3),
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 8,
                  spreadRadius: 2,
                )
              ]),
          margin: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.5,

          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(12),
                  color: kLightBackground,
                  child: Image.asset(dproductItems.length as String),
                ),
              ),
              const Gap(4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'product name',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'short discribtion',
                      style: AppTheme.kBodyText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$566',
                          style: AppTheme.kCardTitle,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_circle,
                              size: 15,
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
