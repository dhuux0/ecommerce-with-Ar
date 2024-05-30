import 'package:dukaaan/constants/const.dart';
import 'package:dukaaan/controlls/d_product_contriller.dart';
import 'package:dukaaan/controlls/itembag_controller.dart';
import 'package:dukaaan/controlls/product_controller.dart';
import 'package:dukaaan/model/3d_products_model.dart';
import 'package:dukaaan/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import '../widgets/d_cardWidget.dart';
import 'package:gap/gap.dart';

// ignore: camel_case_types
class dCardWidget extends ConsumerWidget {
  // final  productIndex;

  const dCardWidget({super.key, required this.productIndex1});
  final int productIndex1;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dProduct = ref.watch(d_ProductNotifierprovider);
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              spreadRadius: 2),
        ],
      ),
      margin: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(12),
              color: kLightBackground,
              child: Image.asset(dProduct[productIndex1].imageurl),
            ),
          ),
          const Gap(4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                dProduct[productIndex1].title,
                style: AppTheme.kCardTitle,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                dProduct[productIndex1].short_description,
                style: AppTheme.kBodyText,
              ),
              //ElevatedButton(onPressed: ({}), child: child),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${dProduct[productIndex1].price}',
                    style: AppTheme.kCardTitle,
                  ),
                  IconButton(
                      onPressed: () {
                        ref.read(proudctNotifierProvider.notifier).isSelectItem(
                            dProduct[productIndex1].Pid, productIndex1);

                        // Itemka ayuu ku darayaa baga
                        if (dProduct[productIndex1].isSelected == false) {
                          ref.read(itemBagProvider.notifier).addNewItemBag(
                                DProductsmodel(
                                  Pid: dProduct[productIndex1].Pid,
                                  // pid: product[productIndex].pid,
                                  imageurl: dProduct[productIndex1].imageurl,
                                  title: dProduct[productIndex1].title,
                                  price: dProduct[productIndex1].price,
                                  short_description:
                                      dProduct[productIndex1].short_description,
                                  //  shortDescription: product[productIndex].shortDescription,
                                  long_description:
                                      dProduct[productIndex1].long_description,
                                  review: dProduct[productIndex1].review,
                                  rating: dProduct[productIndex1].rating,
                                  //  modelpath: dProduct[productIndex1].modelpath,
                                ) as ProductModel,
                              );
                        } else {
                          ref
                              .read(itemBagProvider.notifier)
                              .removeItem(dProduct[productIndex1].Pid);
                        }
                      },
                      icon: Icon(
                        dProduct[productIndex1].isSelected
                            ? Icons.check_circle
                            : Icons.add_circle,
                        size: 30,
                      ))
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
